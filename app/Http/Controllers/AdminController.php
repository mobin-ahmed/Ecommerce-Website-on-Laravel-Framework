<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();
class AdminController extends Controller
{
    public function index(){
        $admin_id=Session::get('admin_id');
        if(!$admin_id){
            return view('admin.admin_login');
        }
        // else Redirect::to("Your session is running!!!");
    }

    // public function show_dashboard(){
    //     return view('admin.dashboard');
    // }

    public function dashboard(Request $request){
        $admin_email=$request->admin_email;
        $admin_password=md5($request->admin_password);
        $result=DB::table('tbl_admin')
                ->where('admin_email',$admin_email)
                ->where('admin_password',$admin_password)
                ->first();
            if ($result) {
                Session::put('admin_id',$result->id);
                Session::put('admin_name',$result->admin_name);
                Session::put('admin_email',$admin_email);
                return Redirect::to('/dashboard');
            }
            else{
                Session::put('msg','email or password invalid');
                return Redirect::to('/admin');
            }
    }
}
