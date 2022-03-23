<?php

namespace App\Imports;

use App\Models\Fullz;
use Carbon\Carbon;
use Maatwebsite\Excel\Concerns\SkipsOnError;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Validators\Failure;
use PhpOffice\PhpSpreadsheet\Shared\Date;

class FullzSSNDLImport implements ToModel ,WithHeadingRow, SkipsOnFailure, SkipsOnError
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Fullz([
            'first_name' => $row['fname'],
            'last_name' => $row['lname'],
            'street' => $row['street'],
            'city' => $row['city'],
            'state' => $row['state'],
            'zip' => $row['zip'],
            'ssn' => $row['ssn'],
            'dob' => Carbon::parse($row['dob'])->format('Y-m-d'),
            'dl' => $row['dl'],
            'dl_state' => $row['dlstate'],
            'dl_issue' => $row['dlissue'] == '' ? NULL : Carbon::parse($row['dlissue'])->format('Y-m-d'),
            'dl_expiry' =>$row['dlexpiry'] == '' ? NULL : Carbon::parse($row['dlexpiry'])->format('Y-m-d'),
            'price' => $row['price'],
            'status' => 1,
            'type' => 2
        ]);

    }

    public function onFailure(Failure ...$failures)
    {
        // Handle the failures how you'd like.
    }
    public function onError(\Throwable $e)
    {
        // Handle the exception how you'd like.
    }
    public function columnFormats(): array
    {
        return [
            'B' => NumberFormat::FORMAT_DATE_DDMMYYYY
        ];
    }
}
