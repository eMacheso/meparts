<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Directorate;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{

    public function __construct()
    {
       return $this->middleware('auth');
    }


    public function profile()
    {
        return view('home.profile');
    }

    public function updateprofile(User $user,Request $request)
    {
        $current_password= Hash::make($request->current_password);
        $password =  auth()->user()->password;
        // dd($current_password);
        if($current_password == $password){

                $new_pass = Hash::make($request->new_password);
                $confirm_pass =Hash::make($request->confirm_password);
                // dd($confirm_pass);
                if($new_pass ==$confirm_pass){
                    $user->password = $confirm_pass;
                    return redirect()->back()->with('success', 'Your profile was updated successfully');

                }else{
                    return redirect()->back()->with('error', 'please check the details and try again!');
                }
        }
        else{
            return redirect()->back()->with('error', 'please check the details and try again!');
        }

        // dd($user);
    }

    public function users()
    {
        return view('users.index',['users'=>User::withTrashed()->where('role','=','director')->get(), ]);
    }

public function disableuser($id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        return redirect()->back()->with('success', 'The user account was disabled!');
    }

    public function activate($id)
    {
        $user = User::withTrashed()->findOrFail($id);
        $user->restore();
        return redirect()->back()->with('success', 'The user account was successfully reactivated!');
    }

    public function create()
    {
        $directorates = DB::table('directorates')
        ->select('id', 'dir_name_short')
        ->get();
         return view('users.create',['directorates' => $directorates]);
       
        //return view('users.create');
    }

    public function newuser(Request $request)
    {

        // dd($request->all());
        $this->validate($request,[
            'firstname'=>'required|string|max:255',
            'email'=>'required|email'
        ]);
        $user = new User();
        $user->firstname = $request->firstname;
        $user->lastname=$request->lastname;
        $user->email =$request->email;
        $user->role = $request->role;
        $user->password = Hash::make($request->password);
        $user->save();

        Toastr::success('new user added successfully!');
        return redirect(url('/users'))->with('success', 'new user added successfully!');
    }

    public function update(Request $request){
        $this->validate($request, [

            'oldpassword' => 'required',
            'newpassword' => 'required',
        ]);
          $hashedPassword = Auth::user()->password;

           if (Hash::check($request->oldpassword , $hashedPassword )) {
                User::findOrFail(auth()->user()->id)->update(['password'=>Hash::make($request->newpassword)]);
                Toastr::success('Password updated successfully!');
                return redirect()->back()->with('success', 'Password updated successfully!');
                return back();
           }
              else{
                return redirect()->back()->with('error', 'Passwords do not match, check and try again!');
                 }
    }
}
