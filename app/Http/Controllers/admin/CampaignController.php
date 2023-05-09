<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;
use Yajra\DataTables\Facades\DataTables;

// use Illuminate\Support\Facades\File;
// use Intervention\Image\File;

class CampaignController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(Request $request){
        if($request->ajax()){
            $data = DB::table('campaigns')->orderBy('id', 'DESC')->get();
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                        $actionbtn = '<a href="" class="btn btn-success btn-sm edit" data-id="'.$row->id.'" data-toggle="modal" data-target="#cat_edit"><i class="fa fa-edit"></i></a>
                            <a href="'.route('brand.delete', [$row->id]).'" id="delete" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>';
                        return $actionbtn;
                    })
                    ->rowColumns(['action'])
                    ->make(true);
        }
        return view('admin.offer.campaign.index');
    }
}
