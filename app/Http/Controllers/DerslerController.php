<?php

namespace App\Http\Controllers;


use App\Dersler;

use App\Http\Resources\DerslerResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;


class DerslerController extends Controller
{
   public function index()
    {
        $dersler = Dersler::with('translations')->orderBy('id','asc')->get();
        return response()->json(DerslerResource::collection($dersler));
    }

    public function single($id){
        $dersler = Dersler::with('translations')->find($id);
        return new DerslerResource($dersler);
    }



}
