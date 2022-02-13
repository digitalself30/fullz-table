<?php

namespace App\Exports;

use App\Models\FullzSSN;
use Maatwebsite\Excel\Concerns\FromCollection;

class FullzSSNExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return FullzSSN::all();
    }
}
