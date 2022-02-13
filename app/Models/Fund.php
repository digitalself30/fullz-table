<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class Fund extends Model
{
    use HasFactory,LogsActivity;

    protected static $recordEvents = ['created', 'updated', 'deleted'];

    public function getActivitylogOptions(): LogOptions
    {
        // TODO: Implement getActivitylogOptions() method.
        return LogOptions::defaults()
            ->logAll()
            ->setDescriptionForEvent(fn(string $eventName) => "The funds has been {$eventName}")
            ->logOnlyDirty()
            ->useLogName('funds');
    }
    public function user(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
