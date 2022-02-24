<?php

namespace App\Http\Controllers;

use App\Models\Fund;
use App\Models\Order;
use App\Models\Transaction;
use App\Models\Wallet;
use Illuminate\Http\Request;
use Auth;
use DB;
use Illuminate\Support\Facades\Crypt;

class AddFundsController extends Controller
{
    public function add_funds(){
        return view('add-funds');
    }
    public function funds_history(){
        if(Auth::user()->user_type == 1){
            $funds = Fund::with('user')->latest()->where('user_id', Auth::id())->paginate(10);
        }
        else{
            $funds = Fund::latest()->where('user_id', Auth::id())->paginate(10);
        }
        return view('funds-history', compact('funds'));
    }
    public function funds_store(Request $request){

        $secretKey = 'v8fPBULSbPbBIYUzMQrmV4-FT_Ofr91umRge081-YX6cg5yso4cjAlTZak8RMtJ8';
        $data = [
            //'amount' => $request->amount, // required Invoice amount in selected currency OR amount_usd can be used instead
            'amount_usd' => $request->amount, // required Invoice amoint in USD
            'currency' => 'BTC', // required (ETH, BTC, LTC, TZEC, DOGE, BCH, ...)
            'order_number' => $request->order_number, // required Client's internal ID
            'order_name' => Auth::user()->name, // required Client's internal name
            'description' => $request->notes, // optional any description
            'callback_url' => route('payment.success'), // optional Absolute URL where Plisio will send updates
            'success_url' => route('payment.success'), // optional Absolute URL of the final (success) invoice link
        ];

        $plisio = new \Plisio\ClientAPI($secretKey);
        $invoice = $plisio->createTransaction($data);

        if ($invoice && isset($invoice['status']) && $invoice['status'] == 'success') {

           $add_fund = new Fund;
           $add_fund->order_number  = $request->order_number;
           $add_fund->transaction_id = $invoice['data']['txn_id'];
           $add_fund->user_id = Auth::id();
           $add_fund->added_by = Auth::id();
           $add_fund->source_amount = $request->amount;
           $add_fund->source_currency = "USD";
           $add_fund->currency = "BTC";
           $add_fund->status = 'Pending';
           $add_fund->save();

           header('Location: ' . $invoice['data']['invoice_url']);
        } else {
            print_r($invoice);
        }
    }
    public function payment_success(){

        $secretKey = 'v8fPBULSbPbBIYUzMQrmV4-FT_Ofr91umRge081-YX6cg5yso4cjAlTZak8RMtJ8';
        $plisio = new \Plisio\ClientAPI($secretKey);

        $transactions = Fund::latest()->where('status', 'Pending')->get();
        foreach ($transactions AS $row){
            $data = $this->getTransactionById($row->transaction_id);

            if($data->status == 'success' AND strtolower($data->data->status) == "completed"){

                $update_funds = Fund::where('transaction_id', $row->transaction_id)->first();
                $update_funds->status = ucfirst($data->data->status);
                $update_funds->notes = "Balance Added via BTC";
                $update_funds->save();

                Wallet::where('user_id', $update_funds->user_id)
                    ->update([
                        'balance' => DB::raw('balance +'. $update_funds->source_amount)
                    ]);

                //Transaction
                $transaction = new Transaction;
                $transaction->transaction_no = $row->transaction_id;
                $transaction->user_id = $update_funds->user_id;
                $transaction->type = 'Credit';
                $transaction->source = "BTC";
                $transaction->amount = $update_funds->source_amount;
                $transaction->status = 'Completed';
                $transaction->save();
            }

        }
        return redirect(route('user.dashboard'))->with('success', 'Congratulations! Your funds have been added in your account.');
    }
    public function getTransactionById($transaction_id){


        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://plisio.net/api/v1/operations/'.$transaction_id.'?api_key=v8fPBULSbPbBIYUzMQrmV4-FT_Ofr91umRge081-YX6cg5yso4cjAlTZak8RMtJ8',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json',
                'Accept: application/json',
            ),
        ));

        $response = curl_exec($curl);
        curl_close($curl);
        return json_decode($response);
    }

    public function wallet($id){
        if(Auth::user()->user_type == 2){
            return back()->with('error', 'You are not authorize');
        }
        $user_id = Crypt::decrypt($id);
        $wallet = Wallet::with('user')->where('user_id', $user_id)->first();
        return view('wallet', compact('wallet'));
    }
    public function wallet_update(Request $request, $id){

        if(Auth::user()->user_type == 2){
            return back()->with('error', 'You are not authorize');
        }

        $this->validate($request,[
            'update_balance' => 'required',
            'notes'  => 'required',
        ]);

        $funds = new Fund();
        $funds->user_id = $id;
        $funds->added_by = Auth::id();
        $funds->transaction_id = rand(111,999).uniqid();
        $funds->order_number = uniqid().rand(111,999);
        $funds->source_amount = $request->update_balance;
        $funds->amount = $request->update_balance;
        $funds->currency = 'USD';
        $funds->source_currency = 'USD';
        $funds->status = 'Pending';
        $funds->notes = $request->notes;
        $funds->save();

        $wallet_status = Wallet::where('user_id', $id)
            ->update([
                'balance' => DB::raw('balance +'. $request->update_balance)
            ]);

        if($wallet_status){
            $update_status = Fund::find($funds->id);
            $update_status->status = 'Completed';
            $update_status->save();
        }

        //Transaction
        $transaction = new Transaction;
        $transaction->transaction_no = $funds->transaction_id;
        $transaction->user_id = $funds->user_id;
        $transaction->type = 'Credit';
        $transaction->source = "USD";
        $transaction->amount = $funds->source_amount;
        $transaction->status = 'Completed';
        $transaction->save();

        return back()->with('success', 'Balance has been added in the wallet');
    }
}
