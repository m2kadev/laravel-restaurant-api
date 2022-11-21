<?php

namespace App\Models;

use App\Models\Order;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class OrderItem extends Model
{
    protected $fillable = ['product_id', 'order_id', 'qty', 'price', 'sub_total'];

    public function order()
    {
        return $this->belongsTo(Order::class);
    }
}
