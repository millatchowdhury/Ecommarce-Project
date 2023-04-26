@extends('layouts.admin_app')

@section('admin_content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Products</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('product.create')}}"><button class="btn btn-success">+ Add New</button></a></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

<section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">All Products List</h3>
            </div>
            <div class="row p-2">
              <div class="form-group col-3">
                <label>Category</label>
                 <select class="form-control submitable" name="category_id" id="category_id">
                   <option value="">All</option>
                     @foreach($category as $row)
                       <option value="{{ $row->id }}">{{ $row->category_name }}</option>
                     @endforeach  
                 </select>
              </div>
              <div class="form-group col-3">
                <label>Brand</label>
                 <select class="form-control submitable" name="brand_id" id="brand_id">
                   <option value="">All</option>
                     @foreach($brand as $row)
                       <option value="{{ $row->id }}">{{ $row->brand_name }}</option>
                     @endforeach  
                 </select>
              </div>
              <div class="form-group col-3">
                <label>warehouses</label>
                 <select class="form-control submitable" name="warehouse" id="warehouse">
                   <option value="">All</option>
                     @foreach($warehouses as $row)
                       <option value="{{ $row->warehouse_name }}">{{ $row->warehouse_name }}</option>
                     @endforeach  
                 </select>
              </div>
              <div class="form-group col-3">
                <label>Status</label>
                 <select class="form-control submitable" name="status" id="status">
                   <option value="1">All</option>
                       <option value="1">Active</option>
                      <option value="0">Inactive</option>
                 </select>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered table-hover ytable">
                    <thead>
                    <tr>
                        <th>SN</th>
                        <th>Thumbnail</th>
                        <th>Name</th>
                        <th>Code</th>
                        <th>Category</th>
                        <th>Subcategory</th>
                        <th>Brand</th>
                        <th>Featured</th>
                        <th>Today Deal</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                    </tbody>
                </table>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" ></script>


<script>
    $(function childcategory(){
         table = $('.ytable').DataTable({
          "processing":true,
          "serverSide":true,
          "searching":true,
          "ajax":{
          "url": "{{ route('product.index') }}", 
          "data":function(e) {
          e.category_id =$("#category_id").val();
          e.brand_id =$("#brand_id").val();
          e.status =$("#status").val();
          e.warehouse =$("#warehouse").val();
        }
      },


        columns:[
        {data:'DT_RowIndex', name:'DT_RowIndex'},
        {data:'thumbnail'  ,name:'thumbnail'},
				{data:'name'  ,name:'name'},
				{data:'code'  ,name:'code'},
                
				{data:'category_name',name:'category_name'},
				{data:'subcategory_name',name:'subcategory_name'},
				{data:'brand_name',name:'brand_name'},
				{data:'featured',name:'featured'},
				{data:'today_deal',name:'today_deal'},
				{data:'status',name:'status'},

				{data:'action',name:'action',orderable:true, searchable:true},
            ]
        });
    });

 // deactive featured
 $('body').on('click', '.deactive_featurd', function(){
      let id = $(this).data('id');
      let url = "{{url('product/not-featured')}}/"+id;
      $.ajax({
        url:url,
        type:'get',
        success:function(data){
          toastr.success(data);
          table.ajax.reload();
        }
      });
    });
    
    // active featured
    $('body').on('click', '.active_featurd', function(){
      let id = $(this).data('id');
      let url = "{{url('product/active-featured')}}/"+id;
      $.ajax({
        url:url,
        type:'get',
        success:function(data){
          toastr.success(data);
          table.ajax.reload();
        }
      });
    });
   
    // deactive deal
    $('body').on('click', '.deactive_deal', function(){
      let id = $(this).data('id');
      let url = "{{url('product/not-deal')}}/"+id;
      $.ajax({
        url:url,
        type:'get',
        success:function(data){
          toastr.success(data);
          table.ajax.reload();
        }
      });
    });
    // active deal
    $('body').on('click', '.active_deal', function(){
      let id = $(this).data('id');
      let url = "{{url('product/active-deal')}}/"+id;
      $.ajax({
        url:url,
        type:'get',
        success:function(data){
          toastr.success(data);
          table.ajax.reload();
        }
      });
    });

      //deactive status
	$('body').on('click','.deactive_status', function(){
	    var id=$(this).data('id');
		var url = "{{ url('product/not-status') }}/"+id;
		$.ajax({
			url:url,
			type:'get',
			success:function(data){  
	        toastr.success(data);
	        table.ajax.reload();
	      }
	  });
    });

    //Active status
	$('body').on('click','.active_status', function(){
	    var id=$(this).data('id');
		var url = "{{ url('product/active-status') }}/"+id;
		$.ajax({
			url:url,
			type:'get',
			success:function(data){  
	        toastr.success(data);
	        table.ajax.reload();
	      }
	    });
    });
    
  //filtering product
    $(document).on('change','.submitable', function(){
        $('.ytable').DataTable().ajax.reload();
    });

</script>


@endsection
