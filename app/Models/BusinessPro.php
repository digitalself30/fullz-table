<?php

namespace App\Models;

use ESolution\DBEncryption\Traits\EncryptedAttribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class BusinessPro extends Model
{
    use HasFactory, LogsActivity, EncryptedAttribute, SoftDeletes;
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
    protected $encryptable = [
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

    public function getActivitylogOptions(): LogOptions
    {
        // TODO: Implement getActivitylogOptions() method.
        return LogOptions::defaults()
            ->logAll()
            ->setDescriptionForEvent(fn(string $eventName) => "The Business pros has been {$eventName}")
            ->logOnlyDirty()
            ->useLogName('Business-pros');
    }
}
