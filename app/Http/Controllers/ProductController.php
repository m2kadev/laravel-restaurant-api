<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        return Product::latest()->get();
    }

    public function store(Request $request)
    {
        $formField = $request->validate([
            'title' => 'required',
            'category' => 'required',
            'price' => 'required',
            'stock' => 'required',
            'quantity' => 'required',
            'discount' => 'required'
        ]);

        if ($request->hasFile('img')) {
            $formField['img'] = $request->file('img')->store('dishes_images', 'public');
        }

        return Product::create($formField);
    }

    //Display the specify resource

    public function show($id)
    {
        return Product::find($id);
    }

    //Update the specified resource in storage

    public function update(Request $request, $id)
    {
        $product = Product::find($id);

        $formField = $request->validate([
            'title' => 'required',
            'category' => 'required',
            'price' => 'required',
            'stock' => 'required',
            'quantity' => 'required',
            'discount' => 'required'
        ]);

        if ($request->hasFile('img')) {
            $formField['img'] = $request->file('img')->store('dishes_images', 'public');
        }

        $product->update($formField);

        return $product;
    }
    
    //Remove the specified resource from storage

    public function destroy($id)
    {
        return Product::destroy($id);
    }

    //Search with Category

    public function search($category) {
        return Product::where('category', 'like', '%'.$category.'%')->get();
    }

}
