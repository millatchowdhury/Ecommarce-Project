<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class IndexController extends Controller
{
   
    public function index(){
        $category = DB::table('categories')->get();
        return view('frontend.index', compact('category'));
    }
}
