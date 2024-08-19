<?php

namespace App\Http\Controllers;

use App\Models\Constituency;
use App\Models\Directorate;
use App\Models\Orderpaper;
use App\Models\Question;
use App\Models\Meeting;
use App\Models\Issue;
use App\Models\OrtIssue;
use App\Models\ManagementDirectionOrt;
use App\Models\ProjectIssue;
use App\Models\ManagementDirectionProject;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class IssueController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth');
    }
    public function ortissues()
    {
       
        //return view('ort_issues.done',['issues'=>Issue::where('status','=',"done" )->get() ,'directorates'=>Directorate::get()]);}
        //return view('issues.ortissues',
        //['ort_issues' =>OrtIssue::latest()->get(),'directorates'=>Directorate::get()  ]);
        return view('issues.ortissues',
        ['ort_issues' =>OrtIssue::where('fin_year','=',"24/25")->latest()->get(),'directorates'=>Directorate::get()  ]);
    }

    public function ortdirection($id)
    {
       
        //return view('ort_issues.done',['issues'=>Issue::where('status','=',"done" )->get() ,'directorates'=>Directorate::get()]);}
        return view('issues.ortdirection',
        ['ortdirection' =>ManagementDirectionOrt::latest()->get(),'ortissues'=>OrtIssue::where('id','=',$id )->get(),'directorates'=>Directorate::get()  ]);
        //return view('issues.ortview',[ 'ortissue' => OrtIssue::findOrFail($id), ]);
    
    }

    public function all_ortdirections()
    {
       
        //return view('ort_issues.done',['issues'=>Issue::where('status','=',"done" )->get() ,'directorates'=>Directorate::get()]);}
        return view('issues.ortdirection',
        ['ortdirection' =>ManagementDirectionOrt::latest()->get(),'ortissues'=>OrtIssue::where('fin_year','=',"24/25")->get(),'directorates'=>Directorate::get()  ]);
        //return view('issues.ortview',[ 'ortissue' => OrtIssue::findOrFail($id), ]);
    
    }

    public function projectissues()
    {
       
        //return view('ort_issues.done',['issues'=>Issue::where('status','=',"done" )->get() ,'directorates'=>Directorate::get()]);}
        return view('issues.projectissues',
        ['project_issues' =>ProjectIssue::where('fin_year','=',"24/25")->latest()->get(),'directorates'=>Directorate::get()  ]);
    }

    public function projectdirection($id)
    {
       
        //return view('project_issues.done',['issues'=>Issue::where('status','=',"done" )->get() ,'directorates'=>Directorate::get()]);}
        return view('issues.projectdirection',
        ['projectdirection' =>ManagementDirectionProject::latest()->get(),'projectissues'=>ProjectIssue::where('id','=',$id )->get(),'directorates'=>Directorate::get()  ]);
    }
    public function all_Pdirections()
    {
       
        //return view('ort_issues.done',['issues'=>Issue::where('status','=',"done" )->get() ,'directorates'=>Directorate::get()]);}
        return view('issues.projectdirection',
        ['projectdirection' =>ManagementDirectionProject::latest()->get(),'projectissues'=>ProjectIssue::where('fin_year','=',"24/25")->get(),'directorates'=>Directorate::get()  ]);
        //return view('issues.ortview',[ 'ortissue' => OrtIssue::findOrFail($id), ]);
    
    }


    public function done()
    {
        $i = auth()->user()->role;
        if ($i=='Admin'){
        return view('issues.done',['issues'=>Issue::where('status','=',"done" )->get() ,'directorates'=>Directorate::get()]);}
        else
       {
        return view('issues.done',['issues'=>Issue::where('status','=',"done" )->get() ,'directorates'=>Directorate::where('dir_name_short','=',$i)->get()]);}
    }
    public function notdone()
    {
        $i = auth()->user()->role;
        if ($i=='Admin'){
        return view('issues.done',['issues'=>Issue::where('status','=',"not done" )->get() ,'directorates'=>Directorate::get()]);}
        else
       {
        return view('issues.done',['issues'=>Issue::where('status','=',"not done" )->get() ,'directorates'=>Directorate::where('dir_name_short','=',$i)->get()]);}
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $i = auth()->user()->role;
        if ($i=='Admin'){
            return view('issues.index',
            ['issues' =>Issue::latest()->get(),'directorates'=>Directorate::get()  ]);}
            else
           { 
            return view('issues.index',
            ['issues' =>Issue::latest()->get(),'directorates'=>Directorate::where('dir_name_short','=',$i)->get()  ]);
            
        }
       /* switch ($i) {
            case 'DBE':
            
                return view('issues.index',
                ['issues' =>Issue::latest()->get(),'directorates'=>Directorate::where('dir_name_short','=',$i)->get()  ]);
                break;
            case 'DSE':
        
                return view('issues.index',
                ['issues' =>Issue::latest()->get(),'directorates'=>Directorate::where('dir_name_short','=',$i)->get()  ]);
                break;
            default:
                return view('issues.index',
                ['issues' =>Issue::latest()->get(),'directorates'=>Directorate::get()  ]);

        }*/
    

    /*        if (auth()->user()->role == 'DSE' ){
        return view('issues.index',
        ['issues' =>Issue::latest()->get(),'directorates'=>Directorate::get()  ]);
    }*/

        
 }



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $directorates = DB::table('directorates')
        ->select('id', 'dir_name')
        ->get();
         return view('issues.create',['directorates' => $directorates]);
        
        //return view('issues.create');
    }

    public function ortcreate()
    {
        $directorates = DB::table('directorates')
        ->select('id', 'dir_name')
        ->get();
         return view('issues.ortcreate',['directorates' => $directorates]);
        
        //return view('issues.create');
    }

    public function newissue(Request $request)
    {

       /* // dd($request->all());
        //echo "innn"; exit();
        $issue = new Issue;
        $issue->issue_name = $request->issue_name;
        $issue->issue_description = $request->issue_description;
        $issue->directorate_id = $request->directorate_id;
        $issue->date_assigned = $request->date_assigned;
        $issue->status = $request->status;
        $issue->date_due = $request->date_due;
       
        $issue->save();*/

       
    
            if ("$request->issue_type" =="ORT"){
            $ortissue = new OrtIssue;
            $ortissue->fin_year = $request->fin_year;
            $ortissue->programme = $request->programme;
            $ortissue->activity = $request->activity;
            $ortissue->directorate_id = $request->directorate_id;
            $ortissue->status = $request->status;
            $ortissue->budget = $request->budget;
            $ortissue->date_due = $request->date_due;
           
            $ortissue->save();
            return redirect('/issues/ortcreate')->with('status', 'issue Form Data Has Been inserted');}
    
            elseif ("$request->issue_type" =="project"){
                $projectissue = new ProjectIssue;
                $projectissue->fin_year = $request->fin_year;
                $projectissue->project_name = $request->project;
                $projectissue->activity = $request->activity;
                $projectissue->directorate_id = $request->directorate_id;
                $projectissue->status = $request->status;
                $projectissue->budget = $request->budget;
                $projectissue->date_due = $request->date_due;
               
                $projectissue->save();
                return redirect('/issues/create')->with('status', 'issue Form Data Has Been inserted');}
    
            
        //Toastr::success('new user added successfully!');
       // return view('issues.create')->with('status', 'issue Form Data Has Been inserted');
        ////return redirect('/issues/create')->with('status', 'issue Form Data Has Been inserted');
       // Toastr::success('new user added successfully!');
       // return redirect(url('/users'))->with('success', 'new user added successfully!');
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
        return view('issues.view',[
            'issue' => Issue::findOrFail($id),
        ]);
    }

  /**   
     * Display the specified resource.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function projectshow($id)
    {

        // dd($question);
        return view('issues.projectsview',[
            'projectissue' => ProjectIssue::findOrFail($id),
        ]);
    }

     /**   
     * Display the specified resource.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function ortshow($id)
    {

        // dd($question);
        return view('issues.ortview',[
            'ortissue' => OrtIssue::findOrFail($id),
        ]);
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
        $issue =$request->only(['status', 'issue_type', 'activity']); 
#UPDATE FOR PROJECT ACTIVITIES
      if ($issue['issue_type'] == "project"){
        $qu = ProjectIssue::findOrFail($id);

        $qu->update([
            //'issue_name' => $issue['issue_name1'],
            'activity' => $issue['activity'],
            'status' => $issue['status'],
            
        ]);

#NEW RECORD IN MANAGEMENT DIRECTIONS TABLE
if (!empty($request->direction)){
        $dir = new ManagementDirectionProject;
        $dir->project_activity_id = $id;
        $dir->direction = $request->direction;
        
        $dir->date = $request->dates;
       
        $dir->save();
}

        return view('issues.projectissues',
        ['project_issues' =>ProjectIssue::where('fin_year','=',"24/25")->latest()->get(),'directorates'=>Directorate::get()  ]);

      }
#ORT ACTIVITIES
     elseif ($issue['issue_type'] == "ort") {
        $qu = OrtIssue::findOrFail($id);
#UPDATE
        $qu->update([
            //'issue_name' => $issue['issue_name1'],
            'activity' => $issue['activity'],
            'status' => $issue['status'],
            
        ]);
#NEW RECORD IN MANAGEMENT DIRECTIONS TABLE
if (!empty($request->direction)){
        $dir = new ManagementDirectionOrt;
        $dir->ort_activity_id = $id;
        $dir->direction = $request->direction;
        
        $dir->date = $request->dates;
       
        $dir->save();
  }     
        return view('issues.ortissues',
        ['ort_issues' =>OrtIssue::where('fin_year','=',"24/25")->latest()->get(),'directorates'=>Directorate::get()  ]);

     }
        
      else{
        $issue =$request->only(['issue_description1', 'status', 'reason', 'se_input', 'dir_responce']);

            $qu = Issue::findOrFail($id);

            $qu->update([
                //'issue_name' => $issue['issue_name1'],
                'issue_description' => $issue['issue_description1'],
                'status' => $issue['status'],
                'reason' => $issue['reason'],
                'se_input' => $issue['se_input'],
                'dir_responce' => $issue['dir_responce']
            ]);
            return view('issues.view',[
                'issue' => Issue::findOrFail($id),
            ]);

        }
           // return redirect()->route('responded')->with('success','Records were successfully updated');
    }


}
