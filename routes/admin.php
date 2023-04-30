<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Auth\LoginController;

Route::get('/admin-home', [HomeController::class, 'adminHome'])->middleware('is_admin')->name('admin.home');
Route::get('/admin-login', [LoginController::class, 'adminLogin'])->name('admin.login');



Route::group(['namespace' =>'App\Http\Controllers\admin', 'middleware' => 'is_admin'], function(){
   Route::get('/admin-logout', 'adminController@adminLogout')->name('admin.logout');
   Route::get('/admin/password/change', 'adminController@passwordChange')->name('admin.password.change');
   Route::post('/admin/password/update', 'adminController@passwordUpdate')->name('admin.password.update');


   //Category
   Route::group(['prefix'=>'category'], function(){
      Route::get('/', 'CategoryController@index')->name('category.index');
      Route::post('/store', 'CategoryController@store')->name('category.store');
      Route::get('/edit/{id}', 'CategoryController@edit');
      Route::post('/update', 'CategoryController@update')->name('category.update');
      Route::get('/delete/{id}', 'CategoryController@destroy')->name('category.delete');
   });

   // global route 
   // Route::get('/get-child-category/{id}', 'CategoryController@GetChildCategory');
   //global route
	Route::get('/get-child-category/{id}','CategoryController@GetChildCategory');

   Route::group(['prefix'=>'subcategory'], function(){
      Route::get('/', 'SubcategoryController@index')->name('subcategory.index');
      Route::post('/store', 'SubcategoryController@store')->name('subcategory.store');
      Route::get('/delete/{id}', 'SubcategoryController@destroy')->name('subcategory.delete');
      Route::get('/edit/{id}', 'SubcategoryController@edit');
      Route::post('/update', 'SubcategoryController@update')->name('subcategory.update');
   });

   //warehouse rutes
   Route::group(['prefix'=>'warehouse'], function(){
      Route::get('/', 'warehouseController@index')->name('warehouse.index');
      Route::post('/store', 'warehouseController@store')->name('warehouse.store');
      Route::get('/delete/{id}', 'warehouseController@destroy')->name('warehouse.delete');
      Route::get('/edit/{id}', 'warehouseController@edit');
      Route::post('/update', 'warehouseController@update')->name('warehouse.update');
   });

   Route::group(['prefix'=>'childcategory'], function(){
      Route::get('/', 'ChildcategoryController@index')->name('childcategory.index');
      Route::post('/store', 'ChildcategoryController@store')->name('childcategory.store');
      Route::get('/delete/{id}', 'ChildcategoryController@destroy')->name('childcategory.delete');
      Route::get('/edit/{id}', 'ChildcategoryController@edit');
      Route::post('/update', 'ChildcategoryController@update')->name('childcategory.update');
   });

   Route::group(['prefix'=>'brand'], function(){
      Route::get('/', 'BrandController@index')->name('brand.index');
      Route::post('/store', 'BrandController@store')->name('brand.store');
      Route::get('/delete/{id}', 'BrandController@destroy')->name('brand.delete');
      Route::get('/edit/{id}', 'BrandController@edit');
      Route::post('/update', 'BrandController@update')->name('brand.update');
   });

   Route::group(['prefix'=>'product'], function(){
      Route::get('/', 'ProductController@index')->name('product.index');
      Route::get('/create', 'ProductController@create')->name('product.create');
      Route::post('/store', 'ProductController@store')->name('product.store');
      Route::get('/delete/{id}', 'ProductController@destroy')->name('product.delete');
      Route::get('/edit/{id}', 'ProductController@edit')->name('product.edit');
      // Route::post('/update', 'BrandController@update')->name('brand.update');
      Route::get('/active-featured/{id}', 'ProductController@activefeatured');
      Route::get('/not-featured/{id}', 'ProductController@notfeatured');

      Route::get('/not-deal/{id}', 'ProductController@notdeal');
      Route::get('/active-deal/{id}', 'ProductController@activedeal');

      Route::get('/active-status/{id}','ProductController@activestatus');
		Route::get('/not-status/{id}','ProductController@notstatus');
   });

   // Coupon Routes
   Route::group(['prefix'=>'coupon'], function(){
      Route::get('/', 'CouponController@index')->name('coupon.index');
      Route::post('/store', 'CouponController@store')->name('store.coupon');
      Route::delete('/delete/{id}', 'CouponController@destroy')->name('coupon.delete');
      Route::get('/edit/{id}', 'CouponController@edit');
      Route::post('/update', 'CouponController@update')->name('update.coupon');
   });


   //setting Route
   Route::group(['prefix'=>'setting'], function(){
      // seo setting 
      Route::group(['prefix'=>'seo'], function(){
         Route::get('/','settingController@seo')->name('seo.setting');
         Route::post('/update/{id}','settingController@update')->name('seo.setting.update');
      });
      // smtp setting 
      Route::group(['prefix'=>'smtp'], function(){
         Route::get('/','settingController@smtp')->name('smtp.setting');
         Route::post('/update/{id}','settingController@smtpUpdate')->name('smtp.setting.update');
      });
      // website setting 
      Route::group(['prefix'=>'website'], function(){
         Route::get('/','settingController@website')->name('website.setting');
         Route::post('/update/{id}','settingController@websiteUpdate')->name('website.setting.update');
      });
      // page creation 
      Route::group(['prefix'=>'page'], function(){
         Route::get('/','PageController@index')->name('page.index');
         Route::get('/create','PageController@create')->name('create.page');
         Route::post('/store','PageController@store')->name('page.store');
         Route::get('/delete/{id}','PageController@destroy')->name('page.delete');
         Route::get('/edit/{id}','PageController@edit')->name('page.edit');
         Route::post('/update/{id}','PageController@update')->name('page.update');
      });

      // Pickup Point 
      Route::group(['prefix'=>'pickup-point'], function(){
         Route::get('/','PickupController@index')->name('pickuppoint.index');
         Route::post('/store','PickupController@store')->name('store.pickup.point');
         Route::delete('/delete/{id}','PickupController@destroy')->name('pickup.point.delete');
         Route::get('/edit/{id}','PickupController@edit');
         Route::post('/update','PickupController@update')->name('update.pickup.point');
      });


   });

});
