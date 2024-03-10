<?php

namespace App\Http\Controllers;

use App\Http\Requests\herosectionRequest;
use App\Http\Requests\herosectionUpdateRequest;
use App\Models\herosection;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class heroSectionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    // public function demo()
    // {
    //     $data = ['email' => 'test@example.com', 'password' => '12345'];
    //     Auth::attempt($data);
    //     dd(Auth::attempt($data));
    //     dd(Auth::user()->can('publish articles'));
    // }

    /**
     * Store a newly created resource in storage.
     */
    public function store(herosectionRequest $request)
    {
        // dd(Auth::user());
        // dd(Auth::user()->can('articles'));
        // $user = Auth::user();
        // dd(Auth::user()->can('delete articles'));
        // $users = user::with('permissions')->get();
        // dd($users);

        // dd($user->getRoleNames());
        // dd($user->permissions);
        // dd(auth()->user()->can('create articles'));
        if (Auth::user()->can('create articles')) {
            $hero = $request->validated();
            if ($request->hasFile('image')) {
                $hero['image'] = $request->image->store('images', ['disk' => 'public']);
            }
            $hero = herosection::create($hero);
            return response()->json(['message' => "Section Created Successfully", 'status' => 300, 'data' => $hero]);
        } else {
            return response()->json(['message' => "Employee can not accesible this route", 'status' => 404]);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        if (Auth::user()->can('show articles')) {
            $hero = herosection::find($id);
            if (is_null($hero)) {
                $response = [
                    'message' => 'section not found',
                ];
                $responseCode = 404;
            } else {
                // dd();
                $hero['image'] = asset('storage/' . $hero['image']);
                $response = [
                    'message' => 'section found',
                    'data' => $hero
                ];
                $responseCode = 200;
            }
            return response()->json($response, $responseCode);
        } else {
            return response()->json(['message' => 'not accesible']);
        }
    }

    public function showAll()
    {
        if (Auth::user()->can('show all articles')) {
            $hero = herosection::all();
            if (is_null($hero)) {
                $response = [
                    'message' => 'section not found',
                ];
                $responseCode = 404;
            } else {
                // $hero['image'] = asset('storage/' . $hero['image']);
                $response = [
                    'message' => 'section found',
                    'data' => $hero
                ];
                $responseCode = 200;
            }
            return response()->json($response, $responseCode);
        } else {
            return response()->json(['message' => 'not accesible']);
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(herosectionUpdateRequest $request, $id)
    {
        if (Auth::user()->can('edit articles')) {
            // dd($request->validated());
            $hero = herosection::where('id', $id)->update($request->validated());
            if ($hero == 0) {
                $response = [
                    'message' => 'Section not found'
                ];
                $responseCode = 404;
            } else {
                if (isset($request->image) && Storage::exists("public/$request->image")) {
                    Storage::delete("public/$request->image");
                }
                if ($request->hasFile('image')) {
                    $hero['image'] = $request->image->store('images', ['disk' => 'public']);
                }
                $response = [
                    'message' => 'Section Updated Successfully'
                ];
                $responseCode = 200;
            }
            return response()->json([$response, $responseCode]);
        } else {
            return response()->json(['message' => 'not accesible']);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        if (Auth::user()->can('delete articles')) {
            $hero = herosection::find($id);
            if (is_null($hero)) {
                $response = [
                    'message' => 'Section not found',
                ];
                $responseCode = 404;
            } else {
                $hero->delete();
                $response = [
                    'message' => 'Section Deleted Successfully'
                ];
                $responseCode = 200;
            }
            return response()->json([$response, $responseCode]);
        } else {
            return response()->json(['message' => 'not accesible']);
        }
    }
}
