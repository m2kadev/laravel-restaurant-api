<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    //show all category
    public function index()
    {
        return Category::all();
    }

    //store new category
    public function store(Request $request)
    {
        $formField = $request->validate([
            'title' => 'required',
            'value' => 'required'
        ]);

        return Category::create($formField);
    }

    //update one category
    public function update(Request $request, $id) {
        $formField = $request->validate([
            'title' => 'required',
            'value' => 'required'
        ]);

        $category = Category::find($id);
        return $category->update($formField);
    }

    //update all category
    public function updateAll(Request $request, $id)
    {
        $formField = $request->all();

        foreach ($formField as $category) {
            $exist = Category::find($category['id']);
            $exist->update($category);
        }

        return $formField;
    }

    //Remove Category
    public function destroy($id)
    {
        return Category::destroy($id);
    }

}