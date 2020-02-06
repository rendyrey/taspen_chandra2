@extends('layouts.layout')
@section('js_header')
  <script src="{{url('limitless/global_assets/js/plugins/forms/selects/select2.min.js')}}"></script>
  <script src="{{url('limitless/global_assets/js/plugins/forms/styling/uniform.min.js')}}"></script>
  <script src="{{url('limitless/global_assets/js/demo_pages/form_layouts.js')}}"></script>

  <script src="{{url('limitless/global_assets/js/plugins/pickers/anytime.min.js')}}"></script>
  {{-- <script src="{{url('limitless/global_assets/js/plugins/pickers/pickadate/picker.time.js')}}"></script> --}}

  <script src="{{url('limitless/global_assets/js/plugins/forms/styling/uniform.min.js')}}"></script>
  <script src="{{url('limitless/global_assets/js/plugins/pickers/pickadate/picker.js')}}"></script>
  <script src="{{url('limitless/global_assets/js/plugins/pickers/pickadate/picker.date.js')}}"></script>



@endsection
@section('content')
  <!-- Page header -->
  <div class="page-header page-header-light">
    <div class="page-header-content header-elements-md-inline">
      <div class="page-title d-flex">
        <h4><i class="icon-arrow-left52 mr-2"></i> <span class="font-weight-semibold">{{$page_menu}}</h4>
          <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
        </div>
      </div>
      <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
        <div class="d-flex">
          <div class="breadcrumb">
            <a href="" class="breadcrumb-item"><i class="icon-home2 mr-2"></i> Profile Edit</a>
          </div>
          <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
        </div>
      </div>
    </div>
    <!-- /page header -->
    <!-- Content area -->
    <div class="content" id="app">
      <!-- Ajax sourced data -->
      <!-- Basic layout-->
      <div class="card">
        <div class="card-header header-elements-inline">
          <h5 class="card-title">{{$page_menu}}</h5>
          <div class="header-elements">
            <div class="list-icons">
              <a class="list-icons-item" data-action="collapse"></a>
            </div>
          </div>
        </div>

        <div class="card-body">
          {{Form::open(['class'=>'form-validate-jquery','id'=>'form','v-on:submit.prevent="simpan"','method'=>'put'])}}
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">NIK</label>
            <div class="col-lg-9">
              {{Form::text('nik',$karyawan->nik,['class'=>'form-control','placeholder'=>'NIK','disabled'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Karyawan</label>
            <div class="col-lg-9">
              {{Form::text('employee_name',$karyawan->employee_name,['class'=>'form-control','placeholder'=>'Nama Karyawan'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Username</label>
            <div class="col-lg-9">
              {{Form::text('username',$user_account->username,['class'=>'form-control','placeholder'=>'Username'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">E-mail</label>
            <div class="col-lg-9">
              {{Form::email('email',$user_account->email,['class'=>'form-control','placeholder'=>'E-mail'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">No HP</label>
            <div class="col-lg-9">
              {{Form::text('no_hp',$karyawan->no_hp,['class'=>'form-control','placeholder'=>'No HP','required'])}}
            </div>
          </div>
          <div class="text-right">
            <button type="submit" class="btn btn-primary">Change Profile <i class="icon-paperplane ml-2"></i></button>
          </div>
        </form>
      </div>
    </div>
    <!-- /basic layout -->
  @endsection
  @section('js_footer')
    <script src="{{url('js/vue.js')}}"></script>
    <script src="{{url('js/axios.js')}}"></script>
    <script src="{{url('limitless/global_assets/js/plugins/forms/validation/validate.min.js')}}"></script>
    <script src="{{url('limitless/global_assets/js/plugins/notifications/sweet_alert.min.js')}}"></script>
    <script src="{{url('js/form-karyawan-edit.js')}}"></script>
    <script>
    var pelaksana = new Vue({
      el:"#app",
      data:{
        rendy:"lalala"
      },
      methods:{
        simpan:function(e){
          var form = document.getElementById('form');
          var formData = new FormData(form)
          var formV = $("#form");
          formV.validate();
          if(formV.valid()){
            $('#spinner').show();
            axios.post("{{url("profile/update/$id")}}",formData).then(function(response){
              $("#spinner").hide();
              var res = response.data;
              if(res.error){
                swal({
                  title: 'Oops...',
                  text: res.error,
                  type: 'error',
                  buttonsStyling: false,
                  confirmButtonClass: 'btn btn-primary',
                  cancelButtonClass: 'btn btn-light',
                });
              }else{
                swal({
                  title: 'Success',
                  text: res.pesan,
                  type: 'success',
                  buttonsStyling: false,
                  confirmButtonClass: 'btn btn-primary',
                  cancelButtonClass: 'btn btn-light',
                }).then(function() {
                    window.location = res.url;
                });
              }
            });
          }

        },

      }
    });
    </script>
    <script>
    $(document).ready(function(){


      $('.select').select2({
        minimumResultsForSearch: Infinity,
        allowClear:true
      });

      $('.form-check-input-styled-success').uniform({
        wrapperClass: 'border-success-600 text-success-800'
      });

      // Time picker
      $('#anytime-time-start').AnyTime_picker({
        format: '%H:%i'
      });
      $('#anytime-time-end').AnyTime_picker({
        format: '%H:%i'
      });

      // Select with search
      $('.select-search').select2({
        allowClear:true
      });



    });
    </script>
  @endsection
