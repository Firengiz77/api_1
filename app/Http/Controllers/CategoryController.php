<?php

namespace App\Http\Controllers;

use App\Models\Courses;
use App\Models\Gallery;
use App\Models\Seo;
use App\Category;
use App\Models\Programs;
use App\Http\Requests\StoreCoursesRequest;
use App\Http\Requests\UpdateCoursesRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\GalleryResource;
use App\Http\Resources\SeoResource;
use App\Http\Resources\PorgramResource;
use App\Http\Resources\CourseResource;
use App\Http\Resources\CategoryResource;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function index()
    {
        $category = Category::with('translations')->orderBy('id','asc')->get();
        return response()->json(CategoryResource::collection($category));
    }
    public function single($id){
        $category = Category::with('translations')->find($id);
        return new CategoryResource($category);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'description' =>'required',
            'short_description'=>'required',
            'month'=>'required',
            'online_price'=>'required',
            'offline_price'=>'required',
            'discount'=>'required',
            'image'=> 'required',
            'meta_title'=>'required',
            'meta_description'=>'required',
            'meta_keyword'=>'required',
            'parent_id'=>'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $files = $request->file('image');
        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('storage/courses/June2022'), $imageName);
  

        Courses::create([
            'name' => $request->name,
            'description' =>$request->description,
            'short_description'=>$request->short_description,
            'month'=>$request->month,
            'online_price'=>$request->online_price,
            'offline_price'=>$request->offline_price,
            'discount'=>$request->discount,
            'meta_title'=>$request->meta_title,
            'meta_description'=>$request->meta_description,
            'meta_keyword'=>$request->meta_keyword,
            'parent_id'=>$request->parent_id,

        ]);

        return response()->json(['message' => 'Successfully Added'], 201);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreCoursesRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCoursesRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Courses  $courses
     * @return \Illuminate\Http\Response
     */
    public function show(Courses $courses)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Courses  $courses
     * @return \Illuminate\Http\Response
     */
    public function edit(Courses $courses)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateCoursesRequest  $request
     * @param  \App\Models\Courses  $courses
     * @return \Illuminate\Http\Response
     */
    public function update($id, Request $request)
    {
 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Courses  $courses
     * @return \Illuminate\Http\Response
     */

    public function delete($id)
    {
        $category = Category::all()->find($id);
        try {
            $category->delete();
            return response()->json(['message' => 'Item deleted'], 204);
        } catch (Exception $ex) {
            return response()->json(['message' => 'Item not found'], 404);
        }
    }
}
