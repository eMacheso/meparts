<?php

namespace App\Http\Controllers;

use App\Models\Meeting;
use App\Models\Sesion;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class SessionController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {

        return view('sessions.index',['sesions'=>Sesion::orderBy('sesion_number', 'desc')->get()]);
    }



    public function create()
    {
        return view('sessions.create');
    }


    public function store( Request $request )
    {
        $data =$request->validate([
            'sesion_number' => 'required'
        ]);

        Sesion::create($data);
        return redirect(route('session.index'))->with('success', 'session created successfully!');
    }

    public function view_meetings($id){
        $sesion = Sesion::where('sesion_number', $id)->firstOrFail();

        $meetings = Meeting::withCount('questions')
            ->where('sesion_id', $sesion->id)
            ->orderBy('meeting_number', 'desc')
            ->get();

        return view('sessions.view_meeting', ['meetings' => $meetings, 'sesion_number' => $sesion->sesion_number]);

    }
}
