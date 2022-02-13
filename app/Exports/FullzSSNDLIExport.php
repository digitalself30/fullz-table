<?php

namespace App\Exports;

use App\Models\FullzSSNDL;
use Maatwebsite\Excel\Concerns\FromCollection;

class FullzSSNDLIExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return FullzSSNDL::all();
    }
}
