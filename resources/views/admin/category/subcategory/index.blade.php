@extends('layouts.admin_app')

@section('admin_content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>DataTables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"><button class="btn btn-success" data-toggle="modal" data-target="#add_category">+ Add New</button></a></li>
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
              <h3 class="card-title">All Sub Category Here</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="example1" class="table table-bordered table-hover">
                    <thead>
                    <tr>
                      <th>SN</th>
                      <th>Sub Category Name</th>
                      <th>Sub Category Slug</th>
                      <th>Category Name</th>
                      <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $key => $row)
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
                        @endforeach
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
<div class="modal fade" id="add_category" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add New Sub Category</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{ route('subcategory.store') }}" method="POST">
            @csrf
            <div class="modal-body">
                <div class="form-group">
                    <select name="category_id" id="" class="form-control">
                        @foreach ($category as $row)
                            <option value="{{$row->id}}">{{$row->category_name}}</option>
                        @endforeach
                        
                    </select>
                </div>
                <div class="form-group">
                    <label for="subcategory_name">Sub Category Name</label>
                    <input type="text" class="form-control" name="subcategory_name" id="subcategory_name" >
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Add Category</button>
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
          <h5 class="modal-title" id="exampleModalLabel">Update Category</h5>
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
    $('body').on('click', '.edit', function(){
        let cat_id = $(this).data('id');
        $.get('subcategory/edit/'+cat_id, function(data){
           $('#modal_body').html(data);
        });
    });


</script>

















@endsection
