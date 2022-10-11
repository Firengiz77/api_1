<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Models\Courses;
use App\Models\Programs;
use App\Dersler;
use App\Category;
use Illuminate\Support\Facades\App;
use TCG\Voyager\Facades\Voyager;


class CourseResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'name'=>$this->name,
            'slug'=>$this->slug,
          //  'dersler'=>$this->programlar,
            'dersler'=> Dersler::where('courses_id',$this->id)->select('dersler')->get()->pluck('dersler')->toArray() ?? 'None',
            'short_description'=>$this->short_description,
            'month'=>$this->month,
            'online_price'=>$this->online_price,
            'offline_price'=>$this->offline_price,
            'discount'=>$this->discount,
            'image'=> Voyager::image($this->image),
            'thumbnail'=>Voyager::image($this->thumbnail),
            'image_attribute'=> $this->image_attribute,
            'thumbnail_attribute'=>$this->thumbnail_attribute,
            'seo_description'=>$this->seo_description,
            'meta_title'=>$this->meta_title,
            'meta_description'=>$this->meta_description,
            'endirim'=>$this->endirim,
            'show_page'=>$this->show_page,
            'meta_keyword'=>$this->meta_keyword,
            'programs'=>Programs::where('courses_id',$this->id)->get(),
            'parent_id' => Category::where('id',$this->parent_id)->select('name')->get()->pluck('name')->toArray() ?? 'None',
            
        ];
    }
}
