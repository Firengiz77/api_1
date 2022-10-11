<?php

namespace App\Http\Controllers;

use App\Models\Seo;
use App\Http\Requests\StoreSeoRequest;
use App\Http\Requests\UpdateSeoRequest;

use App\Http\Resources\SeoResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;


class SeoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $seo = Seo::with('translations')->orderBy('id','asc')->get();
        return response()->json(SeoResource::collection($seo));
    }
    public function single($id){
        $seo = Seo::with('translations')->find($id);
        return new SeoResource($seo); ;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreSeoRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSeoRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Seo  $seo
     * @return \Illuminate\Http\Response
     */
    public function show(Seo $seo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Seo  $seo
     * @return \Illuminate\Http\Response
     */
    public function edit(Seo $seo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSeoRequest  $request
     * @param  \App\Models\Seo  $seo
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateSeoRequest $request, Seo $seo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Seo  $seo
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $seo = Seo::all()->find($id);
        try {
            $seo->delete();
            return response()->json(['message' => 'Item deleted'], 204);
        } catch (Exception $ex) {
            return response()->json(['message' => 'Item not found'], 404);
        }
    }
}
