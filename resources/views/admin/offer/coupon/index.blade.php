@extends('layouts.admin_app')

@section('admin_content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Coupon</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"><button class="btn btn-success" data-toggle="modal" data-target="#addModal">+ Add New</button></a></li>
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
              <h3 class="card-title">Coupon List Here</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered table-hover ytable">
                    <thead>
                    <tr>
                      <th>SL</th>
                      <th>Coupon Code</th>
                      <th>Coupon Amount</th>
                      <th>Coupon Date</th>
                      <th>Coupon Status</th>
                      <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                        {{-- @foreach ($data as $key => $row)
                        <tr>
                            <td>{{$key + 1}}</td>
                            <td>{{$row->subcategory_name}}</td>
                            <td>{{$row->subcat_slug}}</td>
                            <td>{{$row->category_name}}</td>
                            <td>
                                <a href="" class="btn btn-success btn-sm edit" data-id="{{$row->id}}" data-toggle="modal" data-target="#cat_edit"><i class="fa fa-edit"></i></a>
                                <a href="{{ route('subcategory.delete', $row->id) }}" id="delete" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                            </td>
                          </tr>
                        @endforeach --}}
                    </tbody>
                </table>
                <form id="deleted_form" action="" method="delete">
                    @csrf @method('DELETE')
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>
</div>

<!-- Category Edit -->
<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Coupon</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div id="modal_body">

      </div>
      </div>
    </div>
</div>

<!-- Add Sub Category -->
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add New Coupon</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{route('store.coupon')}}" method="POST" id="add_form">
            @csrf
            <div class="modal-body">
               
                <div class="form-group">
                    <label for="coupon_code">Coupon Code</label>
                    <input type="text" class="form-control" name="coupon_code" required >
                </div>

                <div class="form-group">
                    <label for="coupon_type">Coupon Type</label>
                    <select class="form-control" name="type">
                        <option value="1">Fixed</option>
                        <option value="2">Percentage</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="coupon_amount">Amount</label>
                    <input type="text" class="form-control" name="coupon_amount" required>
                </div>

                <div class="form-group">
                    <label for="valid_date">Valid Date</label>
                    <input type="date" class="form-control" name="valid_date" required>
                </div>

                <div class="form-group">
                    <label for="coupon_code">Coupon Status</label>
                    <select class="form-control" name="status" required>
                      <option value="Active">Active</option>
                      <option value="Inactive">Inactive</option>
                    </select>
                </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary"><span class="loading d-none">Loading....</span> Submit</button>
            </form>
        </div>
      </div>
    </div>
  </div>

 

{{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script> --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

$(function childcategory(){
		  table=$('.ytable').DataTable({
			processing:true,
			serverSide:true,
			ajax:"{{ route('coupon.index') }}",
			columns:[
				{data:'DT_RowIndex',name:'DT_RowIndex'},
				{data:'coupon_code'  ,name:'coupon_code'},
				{data:'coupon_amount',name:'coupon_amount'},
				{data:'valid_date',name:'valid_date'},
				{data:'status',name:'status'},
				{data:'action',name:'action',orderable:true, searchable:true},

			]
		});
	});

// store coupon ajax call
$('#add_form').submit(function(e){
  e.preventDefault();
  $('.loading').removeClass('d-none');
  var url = $(this).attr('action');
  var request = $(this).serialize();
  $.ajax({
    url:url,
    type:'post',
    async:false,
    data:request,
    success:function(data){
      toastr.success(data);
      $('#add_form')[0].reset();
      $('.loading').addClass('d-none');
      $('#addModal').modal('hide');
      table.ajax.reload();
    }
  });
});

$('body').on('click', '.edit', function(){
  let id = $(this).data('id');
  $.get("coupon/edit/"+id, function(data){
    $("#modal_body").html(data);
  });
});


  





////////////////!--Delete--!/////////////

$(document).ready(function(){
    $(document).on('click', '#delete_coupon', function(e){
      e.preventDefault();
      var url = $(this).attr('href');
      $('#deleted_form').attr('action', url);
       swal({
           title: "Are you Sure?",
           text: "Once deleted, you will not be able to recover this imaginary file 00000000",
           icon: "warning",
           buttons:true,
           dangerMode: true,
         })
         .then((willDelete)=>{
          if(willDelete){
            $('#deleted_form').submit();
          }else{
            swal("Your imaginary file is safe !");
          }
         });
    });
    $('#deleted_form').submit(function(e){
      e.preventDefault();
      var url = $(this).attr('action');
      var request = $(this).serialize();
      $.ajax({
        url:url,
        type:'post',
        async:false,
        data:request,
        success:function(data){
          toastr.success(data);
          $('#deleted_form')[0].reset();
          table.ajax.reload();
        }
      });
    });
  });



</script>
















@endsection
