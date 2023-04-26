@extends('layouts.admin_app')

@section('admin_content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>All Pages</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <a href="{{route('create.page')}}"> + Add New</a>
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
              <h3 class="card-title">All Page list Here</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="example1" class="table table-bordered table-hover">
                    <thead>
                    <tr>
                      <th>SN</th>
                      <th>Page Name</th>
                      <th>Page Title</th>
                      <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach ($page as $key => $row)
                        <tr>
                            <td>{{$key + 1}}</td>
                            <td>{{$row->page_name}}</td>
                            <td>{{$row->page_title}}</td>
                            <td>
                                <a href="{{route('page.edit', [$row->id])}}" class="btn btn-success btn-sm edit"><i class="fa fa-edit"></i></a>
                                <a href="{{route('page.delete', $row->id)}}" id="delete" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
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




















@endsection
