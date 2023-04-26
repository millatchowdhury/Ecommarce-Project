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
              <li class="breadcrumb-item active">SMTP Mail</li>
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
                <h3 class="card-title">SMTP Mail Settings</h3>
                </div>
                
                
                <form action="{{route('smtp.setting.update', [$smtp->id])}}" method="POST">
                    @csrf
                <div class="card-body">

                    <div class="form-group">
                    <label for="MailMailer">Mail Mailer</label>
                    <input id="MailMailer" type="text" class="form-control" name="mailer" value="{{$smtp->mailer}}" placeholder="Mail Mailer">
                    </div>
                    <div class="form-group">
                    <label for="MailHost">Mail Host</label>
                    <input id="MailHost" type="text" class="form-control" name="host" value="{{$smtp->host}}" placeholder="Mail HOst">
                    </div>
                    <div class="form-group">
                    <label for="MailPort">Mail Port</label>
                    <input id="MailPort" type="text" class="form-control" name="port" value="{{$smtp->port}}" placeholder="Mail Port">
                    </div>
                    <div class="form-group">
                    <label for="MailUsername">Mail Username</label>
                    <input id="MailUsername" type="text" class="form-control" name="user_name" value="{{$smtp->user_name}}" placeholder="Mail User Name">
                    </div>
                    <div class="form-group">
                    <label for="MailPassword">Mail Password</label>
                    <input id="MailPassword" type="text" class="form-control" name="password" value="{{$smtp->password}}" placeholder="Mail Password">
                    </div>
              
                </div>
                
                <div class="card-footer">
                <button type="submit" class="btn btn-primary">Update</button>
                </div>
                </form>
                </div>
        </div>
        </div>
    </section>
    <!-- /.content -->
  </div>
@endsection
