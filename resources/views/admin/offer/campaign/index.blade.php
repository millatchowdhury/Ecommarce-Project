@extends('layouts.admin_app')

@section('admin_content')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.1/css/dropify.css">
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Brands</h1>
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
              <h3 class="card-title">All Brands List Here</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered table-hover ytable">
                    <thead>
                    <tr>
                      <th>SN</th>
                      <th>Brand Name</th>
                      <th>Brand Slug</th>
                      <th>Brand Logo</th>
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
          <h5 class="modal-title" id="exampleModalLabel">Add New Brands</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{ route('brand.store') }}" method="POST" id="add-form" enctype="multipart/form-data">
            @csrf
            <div class="modal-body">
                

                <div class="form-group">
                    <label for="brand_name">Brand Name</label>
                    <input type="text" class="form-control" name="brand_name" required>
                </div>

                <div class="form-group">
                    <label for="brand_name">Brand Logo</label>
                    <input type="file" class="dropify" data-height="140" id="input-file-now" name="brand_logo" required>
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
          <h5 class="modal-title" id="exampleModalLabel">Update Brands</h5>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.1/js/dropify.min.js"></script>
<script>
    $('.dropify').dropify({
    messages: {
        'default': 'Click Here',
        'replace': 'Drag and drop or click',
        'remove':  'Remove',
        'error':   'Ooops, something wrong'
    }
});
</script>

<script>
    $(function childcategory(){
        var table = $('.ytable').DataTable({
            processing:true,
            serverSide:true,
            ajax:"{{route('brand.index')}}",
            columns:[
                {data:'DT_RowIndex', name:'DT_RowIndex'},
                {data:'brand_name', name:'brand_name'},
                {data:'brand_slug', name:'brand_slug'},
                {data:'brand_logo', name:'brand_logo', render:function(data, type, full, meta){
                    return "<img src=\""+data+"\" height=\"40\" />";
                   
                }},
                {data:'action', name:'action', orderable:true, searchable:true},
            ]
        });
    });

   

    $('body').on('click', '.edit', function(){
        let id = $(this).data('id');
        $.get('brand/edit/'+id, function(data){
           $('#modal_body').html(data);
        });
    });



</script>

















@endsection
