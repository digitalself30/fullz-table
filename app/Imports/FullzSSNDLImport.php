<?php

namespace App\Imports;

use App\Models\Fullz;
use Carbon\Carbon;
use Maatwebsite\Excel\Concerns\SkipsEmptyRows;
use Maatwebsite\Excel\Concerns\SkipsOnError;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Validators\Failure;
use PhpOffice\PhpSpreadsheet\Shared\Date;

class FullzSSNDLImport implements ToModel ,WithHeadingRow, SkipsEmptyRows, SkipsOnFailure, SkipsOnError
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
            'dob' => $row['dob'] == '' ? NULL : $this->transformDate($row['dob']),
            'dl' => $row['dl'],
            'dl_state' => $row['dlstate'],
            'dl_issue' => $row['dlissue'] == '' ? NULL : $this->transformDate($row['dlissue']),
            'dl_expiry' =>$row['dlexpiry'] == '' ? NULL : $this->transformDate($row['dlexpiry']),
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
            'H' => NumberFormat::FORMAT_DATE_DDMMYYYY
        ];
    }
    public function transformDate($value, $format = 'Y-m-d')
    {
        try {
            return \Carbon\Carbon::instance(\PhpOffice\PhpSpreadsheet\Shared\Date::excelToDateTimeObject($value));
        } catch (\ErrorException $e) {
            return \Carbon\Carbon::createFromFormat($format, $value);
        }
    }
}
