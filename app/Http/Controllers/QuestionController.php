<?php

namespace App\Http\Controllers;

use App\Models\Constituency;
use App\Models\Orderpaper;
use App\Models\Question;
use App\Models\Meeting;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class QuestionController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth');
    }

    public function responded()
    {
        return view('questions.responded',['questions'=>Question::where('response','!=',NULL )->get()]);
    }
    public function unresponded()
    {
        return view('questions.unresponded',['questions'=>Question::where('response',NULL)->get()]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('questions.index',
        ['questions' =>Question::latest()->get(),'constituencies'=>Constituency::get()  ]);
;    }

public function minister_view()
    {

        return view('questions.minister_view',['questions'=> Question::latest('created_at')->simplePaginate(7)]);
;    }

public function submitquestion(Request $request, $id){

    $question =$request->only(['member_name','constituency','question', 'commitment', 'response']);

    $director = User::findorFail(auth()->user()->id);

    $c = Constituency::query()
        ->where('name', 'LIKE', "%{$question['constituency']}%")
        ->get('id');

    Question::create([
        'question' => $question['question'],
        'meeting_id' => $id,
        'member_name' => $question['member_name'],
        'constituency_id' => $c[0]->id,
        'user_id' => $director->id,
        'response' => $question['response'],
        'commitment' => $question['commitment']
    ]);
    // Toastr ::success('The records were successfully submitted!','Success');
    return redirect()->route('meeting.questions', $id)->with('success','Records were successfully submitted');
}


public function orderpaper()
{   $questions = Orderpaper::paginate(5);
    $constituencies = Constituency::get();
    return view('questions.orderpaper',compact('constituencies',$constituencies,'questions', $questions));
}
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //a form for getting questions from mps
        return view('questions.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
            $this->validate($request,[
                'question'=>'required',
                'constituency'=>'required|string|max:255',
                'member_name'=>'required|string|max:255'
            ]);
            Question::create(request()->all());
            return view('questions.index')->with('success','saved successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        // dd($question);
        return view('questions.view',[
            'question' => Question::findOrFail($id),
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function edit(Question $question)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
            $question =$request->only(['commitment', 'response']);

            $qu = Question::findOrFail($id);

            $qu->update([
                'response' => $question['response'],
                'commitment' => $question['commitment']
            ]);

            return redirect()->route('responded')->with('success','Records were successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        //
    }
}
