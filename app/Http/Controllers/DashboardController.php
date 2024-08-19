<?php

namespace App\Http\Controllers;
use App\Models\Question;
use App\Models\Sesion;
use App\Models\Directorate;
use App\Models\Issue;
use App\Models\OrtIssue;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $users = DB::table('users')->count();
        $unanswered = Question::query()->whereNull('response')->count();
           
        $notdone = Issue::query()->where('status','=',"not done")->count();

        $answered = Question::query()->whereNotNull('response')->count();
        $sesions = Sesion::orderBy('sesion_number','desc')->limit(5)->get();

        $ortid = OrtIssue::query()->where('status','=',"done")->count();
        $ortind = OrtIssue::query()->where('status','=',"notdone")->count();
        $ortip = OrtIssue::query()->where('status','=',"Pending")->count();

        $sesion_numbers = [];
        $suq = []; //session unanswered questions
        $saq = []; //session answered questions
        $stq = []; //session total questions

        foreach ($sesions as $s) {
            $sesion_numbers[] = $s->sesion_number;
            $suq[] = $s->questions()->whereNull('response')->count();
            $saq[] = $s->questions()->whereNotNull('response')->count();
            $stq[] = $s->questions()->count();
        }

      $directorate=[];
        $issues=[];
        $directorateIssues=Directorate::withCount('issues')
            // ->groupByDesc('dir_name')
            ->get();

        foreach($directorateIssues as $issue){
            $directorate[]=$issue->dir_name;
            $issues[]=$issue->issues_count;
        }
        


        return view('dashboard')
            ->with('users', $users)
            ->with('answered', $answered)
            ->with('unanswered', $unanswered)
            ->with('ortid',$ortid)
            ->with('ortind',$ortind)
            ->with('ortip',$ortip)
            ->with('sesion', $sesions[0]->sesion_number)
            ->with('saq',json_encode($saq,JSON_NUMERIC_CHECK))
            ->with('suq',json_encode($suq,JSON_NUMERIC_CHECK))
            ->with('stq',json_encode($stq,JSON_NUMERIC_CHECK))
            ->with('sesion_numbers', json_encode($sesion_numbers, JSON_NUMERIC_CHECK))
            ->with('issues',$issues)
            ->with('notdone',$notdone)
            ->with('directorate',$directorate);
    }
}
