<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;

class DashboardController extends Controller
{
    
    public function index()
    {

        $pageTitle = 'Dashboard';
        $pageHead = 'Dashboard';
        $activeMenu = 'dashboard';

        return view('dashboard',compact('pageTitle','pageHead','activeMenu'));

    }

}
