<?php

namespace App\Http\Controllers;

use App\Models\constituency;
use Illuminate\Http\Request;

class ConstituencyController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $constituencies = Constituency::get();  
       return view('questions.oderpaper',compact('constituencies',$constituencies));
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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\constituency  $constituency
     * @return \Illuminate\Http\Response
     */
    public function show(constituency $constituency)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\constituency  $constituency
     * @return \Illuminate\Http\Response
     */
    public function edit(constituency $constituency)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\constituency  $constituency
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, constituency $constituency)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\constituency  $constituency
     * @return \Illuminate\Http\Response
     */
    public function destroy(constituency $constituency)
    {
        //
    }
}
