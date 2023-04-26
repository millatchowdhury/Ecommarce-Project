@extends('layouts.admin_app')

@section('admin_content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Child Category</h1>
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
              <h3 class="card-title">All Child Category Here</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered table-hover ytable">
                    <thead>
                    <tr>
                      <th>SN</th>
                      <th>Child Category Name</th>
                      <th>Category Name</th>
                      <th>Sub Category Name</th>
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
          <h5 class="modal-title" id="exampleModalLabel">Add New Child Category</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{ route('childcategory.store') }}" method="POST" id="add-form">
            @csrf
            <div class="modal-body">
                <div class="form-group">
                  <label for="category_name">Category/Subcategory Name</label>
                    <select name="subcategory_id" id="" class="form-control">
                       @foreach ($category as $row)
                         

                         <option disabled style="color:blue;">{{$row->category_name}}</option>

                         @php
                          $subcat = DB::table('subcategories')->where('category_id', $row->id)->get();
                         @endphp
                         @foreach ($subcat as $row)
                           <option value="{{$row->id}}">----{{$row->subcategory_name}}</option>
                         @endforeach
                       @endforeach
                        
                        

                    </select>
                </div>
                <div class="form-group">
                    <label for="subcategory_name">Child Category Name</label>
                    <input type="text" class="form-control" name="childcategory_name">
                </div>
            </div>
            <div class="modal-footer">
              {{-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> --}}
              <button type="submit" class="btn btn-primary"><span class="d-none">Loading</span>Submit</button>
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
          <h5 class="modal-title" id="exampleModalLabel">Update Child Category</h5>
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
            ajax:"{{route('childcategory.index')}}",
            columns:[
                {data:'DT_RowIndex', name:'DT_RowIndex'},
                {data:'childcategory_name', name:'childcategory_name'},
                {data:'category_name', name:'category_name'},
                {data:'subcategory_name', name:'subcategory_name'},
                {data:'action', name:'action', orderable:true, searchable:true},
            ]
        });
    });

    $('body').on('click', '.edit', function(){
        let id = $(this).data('id');
        $.get('childcategory/edit/'+id, function(data){
           $('#modal_body').html(data);
        });
    });



</script>

















@endsection
