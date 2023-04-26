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
              <li class="breadcrumb-item active">Seo Setting</li>
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
                <h3 class="card-title">Your Seo Settings</h3>
                </div>
                
                
                <form action="{{route('seo.setting.update', [$data->id])}}" method="POST">
                    @csrf
                <div class="card-body">

                    <div class="form-group">
                    <label for="meta_title">Meta Title</label>
                    <input id="meta_title" type="text" class="form-control" name="meta_title" value="{{$data->meta_title}}" placeholder="Meta Title">
                    </div>
                    <div class="form-group">
                    <label for="meta_author">Meta Autho</label>
                    <input id="meta_author" type="text" class="form-control" name="meta_author" value="{{$data->meta_author}}" placeholder="Meta Autho">
                    </div>
                    <div class="form-group">
                    <label for="meta_tags">Meta Tags</label>
                    <input id="meta_tags" type="text" class="form-control" name="meta_tag" value="{{$data->meta_tag}}" placeholder="Meta Tags">
                    </div>
                    <div class="form-group">
                    <label for="meta_keyword">Meta Keyword</label>
                    <input id="meta_keyword" type="text" class="form-control" name="meta_keyword" value="{{$data->meta_keyword}}" placeholder="Meta Keyword">
                    </div>
                    <small>Example : ecommerce, online shop, online market</small>
                    <div class="form-group">
                    <label for="meta_description">Meta Description</label>
                    <input id="meta_description" type="text" class="form-control" name="meta_description" value="{{$data->meta_description}}" placeholder="Meta Description">
                    </div>
                    <strong class="text-center">-- Others --</strong>
                    <div class="form-group">
                    <label for="google_varification">Googel Verification</label>
                    <input id="google_varification" type="text" class="form-control" name="google_verification" value="{{$data->google_verification}}" placeholder="Meta Verification">
                    <small>Put here only Google Verification Code</small>
                    </div>
                    <div class="form-group">
                    <label for="AlexaVerification">Alexa Verification</label>
                    <input id="AlexaVerification" type="text" class="form-control" name="alexa_verification" value="{{$data->alexa_verification}}" placeholder="Meta Verification">
                    <small>put here only verification code</small>
                    </div>
                    <div class="form-group">
                    <label for="GoogelAnalytics">Googel Analytics</label>
                    <input id="GoogelAnalytics" type="text" class="form-control" name="google_analytics" value="{{$data->google_analytics}}" placeholder="Meta Analytics">
                    </div>
                    <div class="form-group">
                    <label for="GoogleAdsense">Google Adsense</label>
                    <input id="GoogleAdsense" type="text" class="form-control" name="google_adsense" value="{{$data->google_adsense}}" placeholder="Meta Adsense">
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
