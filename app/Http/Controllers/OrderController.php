<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Product;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        return Order::all();
    }

    public function details($id)
    {
        $orderItems = OrderItem::join("products", "order_items.product_id", "=", "products.id")
        ->where("order_items.order_id", $id)
        ->select("products.*", "order_items.qty", "order_items.sub_total", "order_items.price AS order_item_price")
        ->get();

        $order = Order::find($id);
        return ['order' => $order, 'items' => $orderItems];
    }

    /* public function orderDetails() {

        $allOrders = Order::all();
        $receivedOrders = [];

        foreach ($allOrders as $order) {
            $orderItem = OrderItem::join("products", "order_items.product_id", "=", "products.id")
            ->where("order_items.order_id", $order['id'])
            ->select("products.*", "order_items.qty", "order_items.sub_total", "order_items.price AS order_item_price")
            ->get();

            $currentOrder = Order::find($order['id']);
            $receivedOrders->array_push(['order' => $currentOrder, 'items' => $orderItem]);
        }

        /* $orderItems = OrderItem::join("products", "order_items.product_id", "=", "products.id")
        ->select("products.*", "order_items.qty", "order_items.sub_total", "order_items.price AS order_item_price")
        ->get();

        return $orderItems;

        
    } */


    public function store(Request $request)
    {
        $orderField = $request->validate([
            'customer_id' => 'required',
            'total_amount' => 'required',
            'total_discount' => 'required'
        ]);

        $order = Order::create($orderField);

        $orderItems = $request->items;

        foreach ($orderItems as $item) {
            OrderItem::create([
                'product_id' => $item['product_id'],
                'order_id' => $order->id,
                'qty' => $item['qty'],
                'price' => $item['price'],
                'sub_total' => $item['sub_total']
            ]);

            Product::where('id', $item['product_id'])->decrement('stock', $item['qty']);
        }

        return $orderItems;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //

    }
}
