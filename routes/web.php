<?php

use App\Http\Controllers\ExcelController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MeetingController;
use App\Http\Controllers\OrderpaperController;
use App\Http\Controllers\QuestionController;
use App\Http\Controllers\IssueController;
use App\Http\Controllers\SessionController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\MngtDashBController;
use App\Models\Orderpaper;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

use App\Models\Constituency;
use App\Http\Controllers\AnnouncementController;
use App\Http\Controllers\FullCalenderController;
use App\Http\Controllers\Auth\ForgotPasswordController;


Route::get('/',[DashboardController::class,'index']  )->name('dashboard');
Route::get('/mdashboard/index', [MngtDashBController::class, 'index'])->name('mdashboard');
//Route::view('dashboard-url', 'dashboard-blade-view');//ADDED THIS ON 14.11 TRYING A DASHBOARD
Route::resource('announcements', AnnouncementController::class);

// Route::get('/new',function(){
//     return view('create',['constituencies'=>Constituency::get()]);
// });
// Route::get('/recent',function(){
//     return view('recent',['constituencies'=>Constituency::get()]);
// });

// Route::view('allrecords','allrecords')->name('allrecords');

Route::get('/orderpaper/download/{$path}',[OrderpaperController::class,'download'])->name('orderpaper.download');


// Route::get('/master', function(){
//     return view('layouts.master');
// } );
Route::get('/session/index',[SessionController::class,'index'])->name('session.index');
Route::get('/session/create',[SessionController::class,'create'])->name('session.create');
Route::post('/session/store',[SessionController::class,'store'])->name('session.store');
Route::get('/session/{id}/view-meetings', [SessionController::class,'view_meetings'])->name('sesion.meetings.view');


//Admin routes
Route::middleware(['auth', 'admin'])->group(function () {
    Route::get('/users',[UserController::class,'users'])->name('users');
    Route::get('/users/create',[UserController::class,'create'])->name('adduser');
    Route::post('/users/newuser',[UserController::class,'newuser'])->name('newuser');
    Route::put('/users/activate/{id}',[UserController::class,'activate'])->name('user.activate');
    Route::delete('/users/disable/{id}',[UserController::class,'disableuser'])->name('user.disable');


    Route::get('/session/index',[SessionController::class,'index'])->name('session.index');
    Route::get('/session/create',[SessionController::class,'create'])->name('session.create');
    Route::post('/session/store',[SessionController::class,'store'])->name('session.store');

    Route::get('/session/{session}/view-meetings', [MeetingController::class,'view'])->name('meetings.view');
    Route::post('/session/{sn}/meeting/create',[MeetingController::class,'store'])->name('meeting.store');
    Route::get('/session/{sn}/add-meeting',[MeetingController::class,'create'])->name('meeting.create');

    Route::get('/meeting/{id}/questions', [MeetingController::class, 'show'])->name('meeting.questions');
    Route::get('/questions/meeting/{id}/create', [MeetingController::class, 'create_question'])->name('meeting.questions.create');

});
Route::get('/all-meetings', [MeetingController::class, 'all_meetings'])->name('all_meetings');
Route::get('/questions/all/', [QuestionController::class,'index'] )->name('allquestions');
Route::get('/questions/unresponded/', [QuestionController::class,'unresponded'] )->name('unresponded');
Route::get('/questions/responded/', [QuestionController::class,'responded'] )->name('responded');
Route::get('/questions/view/', [QuestionController::class,'minister_view'] )->name('minister_view');
Route::get('/questions/view/{question}', [QuestionController::class,'show'] )->name('minister_respond');
Route::put('/questions/view/response/{question}',[QuestionController::class,'update'])->name('questions.update');
Route::post('/questions/submitquestion',[QuestionController::class,'submitquestion'])->name('submitquestion');
Route::post('/meeting/{id}/questions/submitquestion',[QuestionController::class,'submitquestion'])->name('submitquestion');
Route::get('/users',[HomeController::class,'users'])->name('users');
Route::get('/users/create',[UserController::class,'create'])->name('adduser');
Route::post('/users/newuser',[UserController::class,'newuser'])->name('newuser');
Route::get('/info',[HomeController::class,'info'])->name('info');
Route::get('/profile',[UserController::class,'profile'])->name('profile');
Route::post('/profile/update',[UserController::class,'update'])->name('profile.update');
Route::get('/orderpaper',[QuestionController::class,'orderpaper'])->name('orderpaper');
Route::get('/orderpapers',[OrderpaperController::class,'index'])->name('orderpapers');
Route::get('moe-events-calendar', [FullCalenderController::class, 'index'])->name('mycalendar');
Route::post('full-calender/action', [FullCalenderController::class, 'action']);

Route::get('/issues/all/', [IssueController::class,'index'] )->name('allissues');
Route::get('/issues/view/{issue}', [IssueController::class,'show'] )->name('viewissue');
Route::get('/issues/projectsview/{projectissue}', [IssueController::class,'projectshow'] )->name('viewprojectissue');
Route::get('/issues/ortview/{ortissue}', [IssueController::class,'ortshow'] )->name('viewortissue');
Route::put('/issues/view/response/{issue}',[IssueController::class,'update'])->name('issues.update');
Route::get('/Issues/done/', [IssueController::class,'done'] )->name('done');
Route::get('/issues/notdone/', [IssueController::class,'notdone'] )->name('notdone');
Route::get('/issues/create',[IssueController::class,'create'])->name('addissue');
Route::get('/issues/ortcreate',[IssueController::class,'ortcreate'])->name('addortissue');
Route::get('/issues/mngtcreate',[IssueController::class,'mngtcreate'])->name('addmngtissue');
Route::get('/issues/mngtissues/', [IssueController::class,'mngtissues'] )->name('mngtissues');
Route::post('/issues/newissue',[IssueController::class,'newissue'])->name('newissue');
Route::get('/issues/ortissues/', [IssueController::class,'ortissues'] )->name('ortissues');
Route::get('/issues/all_ortdirections/', [IssueController::class,'all_ortdirections'] )->name('all_ortdirections');
Route::get('/issues/all_Pdirections/', [IssueController::class,'all_Pdirections'] )->name('all_Pdirections');
Route::get('/issues/ortdirection/{ortissue}', [IssueController::class,'ortdirection'] )->name('ortdirection');
Route::get('/issues/projectissues/', [IssueController::class,'projectissues'] )->name('projectissues');
Route::get('/issues/projectdirection/{projectissue}', [IssueController::class,'projectdirection'] )->name('projectdirection');

Auth::routes();

