<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class IndexController extends Controller
{
   
    public function index(){
        $category = DB::table('categories')->get();
        // $bannerproduct = DB::table('products')->where('product_slider', 1)->latest()->first();
        $bannerproduct = Product::where('product_slider', 1)->latest()->first();
        return view('frontend.index', compact('category', 'bannerproduct'));
    }

    public function ProductDetails($slug){
        $product = Product::where('slug', $slug)->first();
        // $product = DB::table('products')->where('slug', $slug)->first();
        $related_product = DB::table('products')->where('subcategory_id', $product->subcategory_id)->orderBy('id', 'DESC')->take(10)->get();
        return view('frontend.product_details', compact('product', 'related_product'));
    }
}
