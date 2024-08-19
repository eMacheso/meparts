<?php

namespace App\Http\Controllers;

use App\Models\Constituency;
use App\Models\Meeting;
use App\Models\Question;
use App\Models\Sesion;
use Illuminate\Http\Request;

class MeetingController extends Controller
{
   public function index()
   {
       return view('sessions.view_meeting');
   }

   public function view(Sesion $sesion)
   {
       return view('sessions.view_meeting',
            [ 'meetings' => Meeting::get(),
            'constituencies'=>Constituency::get(),
            'questions'=>Question::get() ]
        );
   }

   public function create_question($id){
       $meeting = Meeting::findOrFail($id);
       $const = Constituency::get();
       return view('questions.create')->with('meeting', $meeting)->with("constituencies", $const);
   }

   public function create($sesion){
       $se = Sesion::where('sesion_number',$sesion)->firstOrFail();
       return view('meetings.create')->with('sesion_number', $se->sesion_number);
   }


    public function store(Request $request, $s_id)
    {
        $this->validate($request, [
            'meeting_number' => 'integer|required',
            'date' => 'date|required',
            'paper' => 'required']);

        $name = $request->file('paper')->getClientOriginalName();
        $request->paper->move(public_path('order_papers'), $name);

        $session = Sesion::where('sesion_number', $s_id)->firstOrFail();

        Meeting::create([
            'meeting_number' => $request->meeting_number,
            'sesion_id' => $session->id,
            'date' => $request->date,
            'order_paper' => $name
        ]);
        return  redirect()->route('meetings.view', $s_id)->with('success', 'Meeting created successfully');
    }

    public function viewpdf($id)
    {   
        $path = Meeting::findOrFail($id)->pluck('order_paper')->first();
        $fullpath = 'order_papers/'.$path;
        return response()->file($fullpath);
    }

    public function show($i)
    {
        $meeting = Meeting::findOrFail($i);
        $const = Constituency::all();
        $meeting->load('questions');

        return view('questions.view_meeting_question')
            ->with('constituencies', $const)
            ->with('meeting', $meeting);
    }

    public function all_meetings(){
        $meetings = Meeting::withCount('questions')->orderBy('date', 'desc')->simplePaginate(20);
        return view('meetings.all', ['meetings' => $meetings,'sesions'=>Sesion::get()]);
        
    }

}
