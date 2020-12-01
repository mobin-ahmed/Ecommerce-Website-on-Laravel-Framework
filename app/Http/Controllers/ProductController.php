<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\str;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class ProductController extends Controller
{
    public function index(){
        $this->checkAdmin();
        return view('admin.add_product');
    }
    public function all_product(){
        $this->checkAdmin();
        $all_product_info=DB::table('tbl_products')
            ->join('tbl_category','tbl_products.category_id','=','tbl_category.category_id')
            ->join('tbl_manufacture','tbl_products.manufacture_id','=','tbl_manufacture.manufacture_id')
            ->select('tbl_products.*','tbl_category.category_name','tbl_manufacture.manufacture_name')
            ->get();
        $manage_product=view('admin.all_product')
            ->with('all_product_info',$all_product_info);
        return view('admin_layout')
            ->with('admin.all_product',$manage_product);

        //return view(product');
    }
    public function save_product(Request $request){
        $data=array();
        $data['product_name']=$request->product_name;
        $data['category_id']=$request->category_id;
        $data['manufacture_id']=$request->manufacture_id;
        $data['product_short_description']=$request->product_short_description;
        $data['product_long_description']=$request->product_long_description;
        $data['product_price']=$request->product_price;
        $data['product_size']=$request->product_size;
        $data['product_color']=$request->product_color;
        $data['publication_status']=$request->publication_status;
        $image=$request->file('product_image');
        if($image){
            //$image_name=str_random(20);
            $image_name=rand(10,1000000);
            $ext=strtolower($image->getClientOriginalExtension());
            $image_full_name=$image_name.'.'.$ext;
            $upload_path='image/';
            $image_url=$upload_path.$image_full_name;
            $succes=$image->move($upload_path,$image_full_name);
            if($succes){
                $data['product_image']=$image_url;
                DB::table('tbl_products')->insert($data);
                Session::put('message','Product Added succesfully!');
                return Redirect::to('/add-product');
            }
        }
        $data['product_image']='';
        DB::table('tbl_products')->insert($data);
        Session::put('message','Product Added succesfully without image!');
        return Redirect::to('/add-product');
    }



    public function unactive_product($product_id){
        DB::table('tbl_products')
            ->where('product_id',$product_id)
            ->update(['publication_status'=>0]);
        Session::put('message','product Unactive succesfully!');
            return Redirect::to('/all-product');
    }
    public function active_product($product_id){
        DB::table('tbl_products')
            ->where('product_id',$product_id)
            ->update(['publication_status'=>1]);
        Session::put('message','product Active succesfully!');
            return Redirect::to('/all-product');
    }
    public function edit_product($product_id){
        $this->checkAdmin();
        $product_info=DB::table('tbl_products')
            ->where('product_id',$product_id)
            ->first();
        $product_info=view('admin.edit_product')
            ->with('product_info',$product_info);
        return view('admin_layout')
            ->with('admin.edit_product',$product_info);
    }
    public function update_product(Request $request,$product_id){
        $data=array();
        $data['product_name']=$request->product_name;
        $data['product_description']=$request->product_description;

        DB::table('tbl_products')
            ->where('product_id',$product_id)
            ->update($data);
        Session::put('message','product Update succesfully!');
        return Redirect::to('/all-product');
    }
    public function delete_product($product_id){
        DB::table('tbl_products')
            ->where('product_id',$product_id)
            ->delete();
        Session::put('message','product Delete succesfully!');
        return Redirect::to('/all-product');
    }




    public function checkAdmin(){
        $admin_id=Session::get('admin_id');
        if($admin_id){
            return;
        }
        else{
            return Redirect::to('/admin')->send();
        }
    }
}
