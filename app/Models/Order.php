<?php

namespace App\Models;

use App\Models\OrderItem;
use Illuminate\Database\Eloquent\Model;


class Order extends Model
{
    protected $fillable = ['customer_id', 'total_amount', 'total_discount'];

    public function orderItems()
    {
        return $this->hasMany(OrderItem::class);
    }
}