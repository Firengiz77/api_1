<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\SendingMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Models\Courses;
use App\Http\Requests\SendMailRequest;


class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index(){
        $courses = Courses::get();
        return view('front.email2',compact('courses'));
    }

    public function sendmail(Request $request,SendMailRequest $request2){
         // return json_decode($request->courses_id2)->name;
         
        $courses_id2 = [
        'label' => $request->courses_id2,
        'value'=> $request->courses_id2,
        ];
        
      $validator = $request2->validated();

        $message = SendingMail::create($request2->all());

        $message->save();

      $request->validate([
        'name'=>'required',
        'email'=>'required',
        'phone'=>'required',
        'courses_id2'=>'required',
    
        ]);


        $email=['turkay6006@gmail.com','info@jedacademy.az']; 
        $array = [
            'name'=> $request->name,
            'email'=> $request->email,   
            'phone'=>$request->phone,
            'courses_id2'=>$courses_id2['value'],
          ]; 
      Mail::send('front.email', $array,  function ($message2) use($email)  {
          $message2->to( $email, 'Jed academy');
          $message2->subject('Jed Academy');
          return redirect()->back()->with('message','Email has been send Successfully !');
      });  


       return redirect()->back();

    }


  public function sendmail3(Request $request,SendMailRequest $request2){
         // return json_decode($request->courses_id2)->name;

        $validator = $request2->validated();

        $message = SendingMail::create($request2->all());

        $message->save();
     
        $request->validate([
            'name'=>'required',
           'email'=>'required',
           'phone'=>'required',
           'courses_id3'=>'required'
        ]);

        $email=['info@jedacademy.az']; 
        $array = [
            'name'=> $request->name,
            'email'=> $request->email,   
            'phone'=>$request->phone,
            'courses_id3'=>$request->courses_id3
          ]; 
      Mail::send('front.email', $array,  function ($message2) use($email)  {
          $message2->to( $email, 'Jed Academy');
          $message2->subject('Jed Academy');
          return redirect()->back()->with('message','Email has been send Successfully !');
      });  


       return redirect()->back();

    }

    public function sendmail2(Request $request){
        // $obj = [
        //     'label' =>$request->courses_id2,
        //     'value'=>$request->courses_id2,
        // ];

      //  return $obj;

        $request->validate([
             'name'=>'required',
             'email'=>'required',
             'phone'=>'required',
             'courses_id3'=>'required'
        ]);
    
        $email=['info@jedacademy.az','turkay6006@gmail.com']; 
        $array = [
       'name'=> $request->name,
       'email'=> $request->email,   
       'phone'=>$request->phone,
       'courses_id3'=>$request->courses_id3
       //'courses_id2'=>json_decode($request->courses_id2)->name,
     ]; 
      Mail::send('front.email', $array,  function ($message) use($email)  {
          $message->to( $email, 'Jed Academy');
          $message->subject('Jed Academy');
          toastr()->success('Jed Academy !');
      });  
      return redirect()->back();
     

    }


}
