<?php
namespace App\Http\Controllers;
use App\Models\Constituency;
use App\Models\Question;
use App\Models\User;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\DataTables as DataTablesDataTables;
use Yajra\DataTables\Facades\DataTables;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // $constituencies = Constituency::get()

        return view('home.index',['constituencies'=>Constituency::get(),
                                            'questions'=>Question::where('response','=',null)->latest('created_at')->simplePaginate(4)]);
    }

    public function info()
    {
        return view('home.info',['constituencies'=>Constituency::get(),
        'questions'=>Question::get()]);
    }

    public function users()
    {
        return view('users.index',[ 'users'=>User::withTrashed()->get() ]);
    }
    

}
