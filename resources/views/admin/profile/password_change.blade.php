@extends('layouts.admin_app')

@section('admin_content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Admin Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('admin.home')}}">Home</a></li>
              <li class="breadcrumb-item active">Change Password</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-6">
            <div class="card card-primary">
                <div class="card-header">
                <h3 class="card-title">Change Password</h3>
                </div>
                
                
                <form action="{{route('admin.password.update')}}" method="POST">
                    @csrf
                <div class="card-body">

                    <div class="form-group">
                    <label for="oldPassword">Old Password</label>
                    <input type="password" class="form-control" name="old_password" id="oldPassword" placeholder="Old Password">
                    </div>

                    <div class="form-group">
                    <label for="newPassword">New Password</label>
                    <input type="password" class="form-control @error('password') is-invalid @enderror" id="newPassword" name="password" placeholder="New Password">
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{$message}}</strong>
                        </span>

                    @enderror
                    </div>

                    <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" class="form-control" id="confirmPassword" name="password_confirmation" placeholder="Confirm Password">
                    </div>

               
              
                </div>
                
                <div class="card-footer">
                <button type="submit" class="btn btn-primary">Update Password</button>
                </div>
                </form>
                </div>
        </div>
        </div>
    </section>
    <!-- /.content -->
  </div>
@endsection
