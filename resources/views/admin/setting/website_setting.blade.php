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
              <li class="breadcrumb-item active">Website Setting</li>
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
                <h3 class="card-title">Website Settings</h3>
                </div>
                
                
                <form action="{{route('website.setting.update', $setting->id)}}" method="POST" enctype="multipart/form-data">
                    @csrf
                <div class="card-body">

                    <div class="form-group">
                        <label for="currency">Currency</label>
                        <select class="form-control" name="currency">
                            <option value="৳" {{ ($setting->currency == '৳') ? 'selected' : '' }}>Taka (৳)</option>
                            <option value="$" {{ ($setting->currency == '$') ? 'selected' : '' }}>USD ($)</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="phone_one">Phone One</label>
                        <input type="text" id="phone_one" class="form-control" name="phone_one" value="{{$setting->phone_one}}" required>
                    </div>
                    <div class="form-group">
                        <label for="phone_two">Phone Two</label>
                        <input type="text" id="phone_two" class="form-control" name="phone_two" value="{{$setting->phone_two}}" required>
                    </div>
                    <div class="form-group">
                        <label for="phone_one">Main Email</label>
                        <input type="email" id="phone_one" class="form-control" name="main_email" value="{{$setting->main_email}}">
                    </div>
                    <div class="form-group">
                        <label for="phone_one">Support Email</label>
                        <input type="email" id="phone_one" class="form-control" name="support_email" value="{{$setting->support_email}}">
                    </div>
                    <div class="form-group">
                        <label for="phone_one">Address</label>
                        <input type="text" id="phone_one" class="form-control" name="address" value="{{$setting->address}}">
                    </div>

                    <strong class="text-info">Social Link</strong>

                  
                    <div class="form-group">
                        <label for="phone_one">Facebook</label>
                        <input type="text" id="phone_one" class="form-control" name="facebook" value="{{$setting->facebook}}">
                    </div>
                    <div class="form-group">
                        <label for="phone_one">Twitter</label>
                        <input type="text" id="phone_one" class="form-control" name="twitter" value="{{$setting->twitter}}">
                    </div>
                    <div class="form-group">
                        <label for="phone_one">Instagram</label>
                        <input type="text" id="phone_one" class="form-control" name="instagram" value="{{$setting->instagram}}">
                    </div>

                    <div class="form-group">
                        <label for="phone_one">Linked In</label>
                        <input type="text" id="phone_one" class="form-control" name="linkedin" value="{{$setting->linkedin}}">
                    </div>
                    <div class="form-group">
                        <label for="phone_one">Youtube</label>
                        <input type="text" id="phone_one" class="form-control" name="youtube" value="{{$setting->youtube}}">
                    </div>

                    <strong class="text-info">Logo & Favicon</strong>

                    <div class="form-group">
                        <label for="phone_one">Main Logo</label>
                        <input type="file" id="phone_one" class="form-control" name="logo">
                        <input type="hidden" id="phone_one" class="form-control" name="old_logo" value="{{$setting->logo}}">
                    </div>
                    <div class="form-group">
                        <label for="phone_one">Favicon</label>
                        <input type="file" id="phone_one" class="form-control" name="favicon">
                        <input type="hidden" id="phone_one" class="form-control" name="old_favicon" value="{{$setting->favicon}}">
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
