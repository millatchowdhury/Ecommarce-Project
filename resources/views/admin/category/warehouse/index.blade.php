@extends('layouts.admin_app')

@section('admin_content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Warehouse</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"><button class="btn btn-success" data-toggle="modal" data-target="#addModal">+ New Warehouse</button></a></li>
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
              <h3 class="card-title">Warehouse list here</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered table-hover ytable">
                    <thead>
                    <tr>
                      <th>SN</th>
                      <th>Warehouse Name</th>
                      <th>Warehouse Address</th>
                      <th>Warehouse Phone</th>
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
<!-- Add Sub Category -->
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add WareHouse</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <form action="{{ route('warehouse.store') }}" method="POST" id="add-form">
            @csrf
            <div class="modal-body">

                <div class="form-group">
                    <label for="subcategory_name">Warehouse Name</label>
                    <input type="text" class="form-control" name="warehouse_name" placeholder="Warehouse Name" required>
                </div>
                
                <div class="form-group">
                    <label for="subcategory_name">Warehouse Address</label>
                    <input type="text" class="form-control" name="warehouse_address" placeholder="Warehouse Address" required>
                </div>

                <div class="form-group">
                    <label for="subcategory_name">Warehouse Phone</label>
                    <input type="text" class="form-control" name="warehouse_phone" placeholder="Warehouse Phone" required>
                </div>
            </div>
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary"><span class="d-none loader"><i class="fas faa-spinner"></i> Loading</span><span class="submit_btn">Submit</span></button>
            </form>
        </div>
      </div>
    </div>
  </div>
<!-- Category Edit -->
<div class="modal fade" id="cat_edit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Update Warehouse</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div id="modal_body">

        </div>
        </div>
      </div>
    </div>
  </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
    $(function childcategory(){
        var table = $('.ytable').DataTable({
            processing:true,
            serverSide:true,
            ajax:"{{route('warehouse.index')}}",
            columns:[
                {data:'DT_RowIndex', name:'DT_RowIndex'},
                {data:'warehouse_name', name:'warehouse_name'},
                {data:'warehouse_address', name:'warehouse_address'},
                {data:'warehouse_phone', name:'warehouse_phone'},
                {data:'action', name:'action', orderable:true, searchable:true},
            ]
        });
    });



    // form submit loading show and hide
    $('body').on('click','.edit', function(){
      let id = $(this).data('id');
      $.get("warehouse/edit/"+id, function(data){
        $("#modal_body").html(data);
      });
    });
    
  //   $('body').on('click','.edit', function(){
  //   let id=$(this).data('id');
  //   $.get("warehouse/edit/"+id, function(data){
  //       $("#modal_body").html(data);
  //   });
  // });

    //form submit loading show and hide
    $("#add-form").on('submit', function(){
       $('.loader').removeClass('d-none');
       $('.submit_btn').addClass('d-none');
    });



</script>

















@endsection
