<?php

namespace App\Http\Controllers;
use App\Models\Announcement;
use Illuminate\Http\Request;

class AnnouncementController extends Controller
{
    public function index()
    {
        return view('announcements.index',['announcements'=>Announcement::latest()->simplePaginate(5)]);
    }


    public function create()
    {
        return view('announcements.create');
    }

    public function store(Request $request)
    {
        
        $announcement = new Announcement();
        if($request->has('attachment')){
            $filename = $request->file('attachment')->getClientOriginalName();
            $request->attachment->move(public_path('docs'), $filename);
            $announcement->attachment = $filename ;
        }
        $announcement->title = $request->title ;
        $announcement->announcement = $request->announcement ;

        $announcement->save();
        return redirect(route('announcements.index'))->with('success', 'Announcement made!');
    }

    public function destroy($id)
    {
        Announcement::findOrFail($id)->delete();
        return redirect()->back()->with('error', 'Announcement deleted');
    }

}
