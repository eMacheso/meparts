<?php

namespace App\Http\Controllers;

use App\Exports\UsersExport;
use App\Imports\UsersImport;
use Illuminate\Http\Request;
// use Maatwebsite\Excel\Excel;
use Excel;

class ExcelController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function importExport()
    {
        return view('import');
    }

    public function export()
    {
        return Excel::download(new UsersExport,'users.xlsx');
    }

    public function import(Request $request)
    {
        Excel::import(new UsersImport,$request->file('file'));
        return redirect()->back();
    }

}
