@extends('admin_layout')
@section('content')

<ul class="breadcrumb">
	<li>
		<i class="icon-home"></i>
		<a href="index.html">Home</a>
		<i class="icon-angle-right"></i> 
	</li>
	<li>
		<i class="icon-edit"></i>
		<a href="#">Update Manufacture</a>
	</li>
</ul>
			
<div class="row-fluid sortable">
	<div class="box span12">
		<span></span>
		<div class="box-header" data-original-title>
			<h2><i class="halflings-icon edit"></i><span class="break"></span>Update Manufacture</h2>
		</div>
		<p class="alert-success">
			<?php 
				$msg=Session::get('message');
				if($msg){
					echo $msg;
					Session::put('message',null);
				}
			?>
		</p>
		<div class="box-content">
			<form class="form-horizontal" action="{{url('update-manufacture',$manufacture_info->manufacture_id)}}" method="post">
				{{csrf_field()}}
				<fieldset>
				<div class="control-group">
					<label class="control-label">Manufacture Name</label>
					<div class="controls">
					<input type="text" name="manufacture_name" value="{{$manufacture_info->manufacture_name}}">
					</div>
				</div>
				<div class="control-group hidden-phone">
					<label class="control-label" for="textarea2">Manufacture Description</label> 
					<div class="controls">
					<textarea class="cleditor" name="manufacture_description" rows="3"> {{$manufacture_info->manufacture_description}} </textarea>
					</div>
				</div>
				</div>
				<div class="form-actions">
					<button type="submit" class="btn btn-primary">Update Manufacture</button>
				</div>
				</fieldset>
			</form>   

		</div>
	</div><!--/span-->

</div><!--/row-->

@endsection