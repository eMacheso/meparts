<?php

namespace App\Http\Controllers;
use App\Models\OrtIssue;
use App\Models\ProjectIssue;
use App\Models\Directorate;
use Illuminate\Support\Facades\DB;


use Illuminate\Http\Request;

class MngtDashBController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $users = DB::table('users')->count();
        $directorate = DB::table('directorates')->get();
        /*$unanswered = Question::query()->whereNull('response')->count();
           
        $notdone = Issue::query()->where('status','=',"not done")->count();

        $answered = Question::query()->whereNotNull('response')->count();
        $sesions = Sesion::orderBy('sesion_number','desc')->limit(5)->get();*/

        //$ortid = OrtIssue::query()->where('status','=',"done")->count();
        //$ortind = OrtIssue::query()->where('status','=',"notdone")->count();
        //$ortip = OrtIssue::query()->where('status','=',"Pending")->count();

        $directorates = [];
        $ortid = []; 
        $ortind = []; 
        $ortip = []; 
        $orti_all = [];
        $projectid = []; 
        $projectind = []; 
        $projectip = []; 
        $project_all = [];
        

        foreach ($directorate as $d) {
            $dir_arr[] = $d->dir_name_short;
            $ortid[] = OrtIssue::where([['status','=',"done"], ['fin_year','=',"24/25"], ['directorate_id','=',$d->id]])->count();
            $ortind[] = OrtIssue::where([['status','=',"not done" ], ['fin_year','=',"24/25"], [ 'directorate_id','=',$d->id]])->count();
            $ortip[] = OrtIssue::where([['status','=',"pending" ], ['fin_year','=',"24/25"], [ 'directorate_id','=',$d->id]])->count();

            $orti_all[] = OrtIssue::where('directorate_id','=',$d->id)->count();

            $projectid[] = ProjectIssue::where([['status','=',"done"], ['fin_year','=',"24/25"], ['directorate_id','=',$d->id]])->count();
            $projectind[] = ProjectIssue::where([['status','=',"not done" ], ['fin_year','=',"24/25"], [ 'directorate_id','=',$d->id]])->count();
            $projectip[] = ProjectIssue::where([['status','=',"pending" ], ['fin_year','=',"24/25"], [ 'directorate_id','=',$d->id]])->count();

            $projecti_all[] = ProjectIssue::where('directorate_id','=',$d->id)->count();
        }

      /*$directorate=[];
        $issues=[];
        $directorateIssues=Directorate::withCount('issues')
            // ->groupByDesc('dir_name')
            ->get();

        foreach($directorateIssues as $issue){
            $directorate[]=$issue->dir_name;
            $issues[]=$issue->issues_count;
        }*/
        


        return view('mdashboard.index')
            ->with('users', $users)
            
           // ->with('sesion', $sesions[0]->sesion_number)
            ->with('ortid',json_encode($ortid,JSON_NUMERIC_CHECK))
            ->with('ortind',json_encode($ortind,JSON_NUMERIC_CHECK))
            ->with('ortip',json_encode($ortip,JSON_NUMERIC_CHECK))
            ->with('orti_all',json_encode($orti_all,JSON_NUMERIC_CHECK))
            ->with('projectid',json_encode($projectid,JSON_NUMERIC_CHECK))
            ->with('projectind',json_encode($projectind,JSON_NUMERIC_CHECK))
            ->with('projectip',json_encode($projectip,JSON_NUMERIC_CHECK))
            ->with('projecti_all',json_encode($projecti_all,JSON_NUMERIC_CHECK))
          //  ->with('sesion_numbers', json_encode($sesion_numbers, JSON_NUMERIC_CHECK))
            ->with('dir_arr',json_encode($dir_arr,JSON_NUMERIC_CHECK));
        
    }
 

    }

