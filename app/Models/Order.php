<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class Order extends Model
{
    use HasFactory, LogsActivity;

    protected static $recordEvents = ['created', 'updated', 'deleted'];

    public function getActivitylogOptions(): LogOptions
    {
        // TODO: Implement getActivitylogOptions() method.
        return LogOptions::defaults()
            ->logAll()
            ->setDescriptionForEvent(fn(string $eventName) => "The order has been {$eventName}")
            ->logOnlyDirty()
            ->useLogName('order');
    }

    public function fullz_table(){
        return $this->hasOne(Fullz::class, 'id', 'fullz_id');
    }
    public function user(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
