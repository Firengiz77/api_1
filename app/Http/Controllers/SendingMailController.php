<?php

namespace App\Http\Controllers;

use App\Models\SendingMail;
use App\Http\Requests\StoreSendingMailRequest;
use App\Http\Requests\UpdateSendingMailRequest;

class SendingMailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * @param  \App\Http\Requests\StoreSendingMailRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSendingMailRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SendingMail  $sendingMail
     * @return \Illuminate\Http\Response
     */
    public function show(SendingMail $sendingMail)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SendingMail  $sendingMail
     * @return \Illuminate\Http\Response
     */
    public function edit(SendingMail $sendingMail)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSendingMailRequest  $request
     * @param  \App\Models\SendingMail  $sendingMail
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateSendingMailRequest $request, SendingMail $sendingMail)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SendingMail  $sendingMail
     * @return \Illuminate\Http\Response
     */
    public function destroy(SendingMail $sendingMail)
    {
        //
    }
}
