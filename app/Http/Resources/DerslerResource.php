<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Dersler;
use App\Models\Courses;

class DerslerResource extends JsonResource
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
            'dersler'=>$this->dersler,
            'courses_id'=>Courses::where('id',$this->courses_id)->get(),
           
        ];
    }
}
