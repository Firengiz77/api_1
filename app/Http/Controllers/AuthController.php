<?php

namespace App\Http\Controllers;


use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{

    public function register(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:50',
            'email' => 'required|max:100|email|string',
            'password' => 'required|min:8|string',
            'repeat_password' => 'required|min:8|same:password',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);

        return response()->json(['message' => 'Successfully registered!'], 201);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|string|max:50',
            'password' => 'required|min:8|string',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        if (!Auth::attempt($validator->validated())) {
            return response()->json(['message' => 'Unauthorized'], 401);
        }

        $user = $request->user();
        $tokenResult = $user->createToken('personal_access_token');
        $token = $tokenResult->token;
        $token->expires_at = Carbon::now()->addHours(10);
        $token->save();
        $request->headers->set('Authorization','Bearer '.$tokenResult->accessToken);
        return response([
            'user' => $user,
            'token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'expires_at' => Carbon::parse($tokenResult->token->expires_at)->toDateTimeString()
        ]);
    }

    public function logout(Request $request)
    {
        $token = $request->user()->token();
        $token->revoke();
        return response()->json(['message' => 'Successfuly logged out'], 201);
    }


}
