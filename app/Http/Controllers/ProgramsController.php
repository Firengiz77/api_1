<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProgramsRequest;
use App\Http\Requests\UpdateProgramsRequest;
use App\Models\Programs;

use App\Http\Resources\PorgramResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;


class ProgramsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $programs = Programs::with('translations')->orderBy('id','asc')->get();
        return response()->json(PorgramResource::collection($programs));
    }
    public function single($id){
        $programs = Programs::with('translations')->find($id);
        return new PorgramResource($programs);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'months' => 'required',
            'program' =>'required',
            'courses_id'=>'required',
          
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        Programs::create([
            'months' => $request->months,
            'program' =>$request->program,
            'courses_id'=>$request->courses_id,
        ]);

        return response()->json(['message' => 'Successfully Added'], 201);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreProgramsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProgramsRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Programs  $programs
     * @return \Illuminate\Http\Response
     */
    public function show(Programs $programs)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Programs  $programs
     * @return \Illuminate\Http\Response
     */
    public function edit(Programs $programs)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateProgramsRequest  $request
     * @param  \App\Models\Programs  $programs
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $programs = Programs::all()->find($id);
        if (!$programs) {
            return response()->json(['message' => 'Item not found'], 404);
        }
        $validator = Validator::make($request->all(), [
            'months' => 'required',
            'program' =>'required',
            'courses_id'=>'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $programs->update($request->all());

        return response()->json(['message' => 'Successfully updated!','data'=>$programs], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Programs  $programs
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $programs = Programs::all()->find($id);
        try {
            $programs->delete();
            return response()->json(['message' => 'Item deleted'], 204);
        } catch (Exception $ex) {
            return response()->json(['message' => 'Item not found'], 404);
        }
    
    }
}
