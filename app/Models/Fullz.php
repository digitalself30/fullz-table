<?php

namespace App\Models;

use ESolution\DBEncryption\Traits\EncryptedAttribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class Fullz extends Model
{
    use HasFactory,LogsActivity, EncryptedAttribute;

    protected static $recordEvents = ['created', 'updated', 'deleted'];

    protected $fillable =[
        'first_name',
        'last_name',
        'street',
        'city',
        'state',
        'zip',
        'ssn',
        'dob',
        'dl',
        'dl_state',
        'dl_issue',
        'dl_expiry',
        'price',
        'status',
        'type'
    ];


    protected $encryptable = [
        'first_name',
        'last_name',
        'street',
        'city',
        'state',
        'zip',
        'ssn',
        //'dob',
        'dl',
        'dl_state',
        'dl_issue',
        'dl_expiry',
        //'price',
    ];

    public function getActivitylogOptions(): LogOptions
    {
        // TODO: Implement getActivitylogOptions() method.
        return LogOptions::defaults()
            ->logAll()
            ->setDescriptionForEvent(fn(string $eventName) => "The fullz table has been {$eventName}")
            ->logOnlyDirty()
            ->useLogName('Fullz');
    }
    public function order(){
        return $this->hasOne(Order::class, 'fullz_id', 'id');
    }
}
