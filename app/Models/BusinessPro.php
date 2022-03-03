<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BusinessPro extends Model
{
    use HasFactory;
    protected $fillable =[
        'company_name',
        'ein',
        'creation_date',
        'owner',
        'state',
        'city',
        'article_of_organization',
        'annual_report',
        'price',
        'file_path'
    ];
}
