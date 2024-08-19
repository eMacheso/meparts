<?php

namespace App\Http\Controllers;

use App\Models\Constituency;
use App\Models\Orderpaper;
use App\Models\Meeting;
use App\Models\Question;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class OrderpaperController extends Controller
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
        
            return view('orderpaper.index',['orderpapers'=>Meeting::get()]);
    
    }

    public function import(Request $request){

        dd('to be worked on soon');

    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('questions.create_orderpaper',['constituencies'=>Constituency::get()]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
        $this->validate($request,[
            'orderpaper'=>'required',
            
        ]);
        // dd($request->all());
        $name = $request->file('orderpaper')->getClientOriginalName();  
        $orderpaper = new Orderpaper();
        
        $request->orderpaper->move(public_path('orderpapers'), $name);
        $orderpaper->orderpaper = $name ;
        
        $orderpaper->save();
        // dd($orderpaper);
        Toastr::success('record submited successfully');
        return redirect( route('orderpapers') );
    }

    public function download($path)
    {
        $headers = ['Content-type: image '];
        return Storage::download($path,$headers);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Orderpaper  $orderpaper
     * @return \Illuminate\Http\Response
     */
    public function show()
    {   
        
        return view('orderpaper.index',['orderpapers'=>Meeting::get()]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Orderpaper  $orderpaper
     * @return \Illuminate\Http\Response
     */
    public function edit(Orderpaper $orderpaper)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Orderpaper  $orderpaper
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Orderpaper $orderpaper)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Orderpaper  $orderpaper
     * @return \Illuminate\Http\Response
     */
    public function destroy(Orderpaper $orderpaper)
    {
        //
    }
}
