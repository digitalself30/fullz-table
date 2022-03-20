<?php

namespace App\Imports;

use App\Models\BusinessPro;
use App\Models\Fullz;
use Carbon\Carbon;
use Maatwebsite\Excel\Concerns\SkipsOnError;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Validators\Failure;

class BusinessProsImport implements ToModel ,WithHeadingRow, SkipsOnFailure, SkipsOnError
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return BusinessPro::create([
            'company_name' => $row['companyname'],
            'ein' => $row['ein'],
            'creation_date' => Carbon::parse($row['creationdate'])->format('Y-m-d'),
            'owner' => $row['owner'],
            'state' => $row['state'],
            'city' => $row['city'],
            'article_of_organization' => $row['articleoforganization'],
            'annual_report' => $row['annualreport'],
            'price' => $row['price'],
            'file_path' => str_replace(' ','_', $row['companyname']).'.zip',
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
