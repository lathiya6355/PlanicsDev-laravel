<?php

namespace App\Http\Controllers;

use App\Http\Requests\registerUserRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laravel\Passport\Passport;

class userController extends Controller
{
    public function register(registerUserRequest $request)
    {
        // dd(true);
        // $user = User::all();
        // dd($user);
        if ($user = User::create($request->all())) {
            $user->assignRole('Employee');
            // dd($user);
            // $token = $user->createToken("auth_Token")->accessToken;
            $token = $user->createToken("MyAuthApp")->plainTextToken;

            return response()->json([
                'message' => 'user created',
                'user' => $user,
                'token' => $token
            ]);
        } else {
            return response()->json([
                'message' => 'user not created',
            ], 404);
        }
    }

    public function login(Request $request) {
        if (Auth::attempt($request->all())) {
            $user = Auth::user();
            $user->getRoleNames();
            // $token = $user->createToken("auth_Token")->accessToken;
            $token = $user->createToken("MyAuthApp")->plainTextToken;
            return response()->json([
                'message' => 'Logged In',
                'data' => $user,
                'token' => $token
            ]);
        } else {
            return response()->json([
                'message' => 'User not Found'
            ], 404);
        }
    }

    // public function demo() {
    //     $data = ['email' => 'test@example.com','password' => '12345'];
    //     Auth::attempt($data);

    //     dd(Auth::user()->can(' articles'));
    // }

    public function logout(Request $request) {
        $request->user()->token()->revoke();
        return response()->json(['message' => 'user logout']);
    }
}
