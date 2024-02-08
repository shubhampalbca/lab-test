<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\UserTest;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $lab_department = DB::table("lab_department")->pluck('dep_name','id'); 
      
        return view('index',compact('lab_department'));
    }

    public function parent_lab_test($id)
    {
        $cities = DB::table("parent_lab_test")
                    ->where("dep_id",$id)
                    ->pluck('name','id');
        return json_encode($cities);
    }

   
    public function lab_test(Request $request)
    {
        $names = $request->input('parent_lab_test');
        $dep_id = $request->input('lab_department');

        foreach ($names as $name) {
            $user = new UserTest;
            $user->dep_id = $dep_id;
            $user->parent_id = $name;
            $user->save();
        }
        return redirect()->back()->with('status','Tset Added Successfully');
    }

    
    public function show(string $id)
    {
        //
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
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
