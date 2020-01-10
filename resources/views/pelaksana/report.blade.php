@extends('layouts.layout')
@section('js_header')
  <script src="{{url('limitless/global_assets/js/plugins/forms/selects/select2.min.js')}}"></script>
  <script src="{{url('limitless/global_assets/js/plugins/forms/styling/uniform.min.js')}}"></script>


  <script src="{{url('limitless/global_assets/js/plugins/pickers/anytime.min.js')}}"></script>

  <script src="{{url('limitless/global_assets/js/plugins/pickers/pickadate/picker.js')}}"></script>
  <script src="{{url('limitless/global_assets/js/plugins/pickers/pickadate/picker.time.js')}}"></script>
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
            <a href="{{url($user->role.'/dashboard')}}" class="breadcrumb-item"><i class="icon-home2 mr-2"></i> Dashboard</a>
            <a href="{{url($user->role.'/dashboard')}}" class="breadcrumb-item">Pelaksana</a>
            <a href="" class="breadcrumb-item">Report</a>
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
          <h5 class="card-title">Generate Report</h5>
          <div class="header-elements">
            <div class="list-icons">
              <a class="list-icons-item" data-action="collapse"></a>
            </div>
          </div>
        </div>

        <div class="card-body">
          {{Form::open(['url'=>'generate_report','method'=>'post','class'=>'form-validate-jquery','id'=>'form'])}}

          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Start Date</label>
            <div class="col-lg-9">
              <div class="input-group">
                <span class="input-group-prepend">
                  <span class="input-group-text"><i class="icon-calendar5"></i></span>
                </span>
                {{Form::text('start_date','',['class'=>'form-control pickadate','placeholder'=>'Klik untuk memilih tanggal'])}}
              </div>
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">End Date</label>
            <div class="col-lg-9">
              <div class="input-group">
                <span class="input-group-prepend">
                  <span class="input-group-text"><i class="icon-calendar5"></i></span>
                </span>
                {{Form::text('end_date','',['class'=>'form-control pickadate','placeholder'=>'Klik untuk memilih tanggal'])}}
              </div>
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Bidang</label>
            <div class="col-lg-9">
              {{Form::select('bidang_id',$bidang,null,['class'=>'form-control select-search data-fouc','data-placeholder'=>'Pilih Bidang'])}}

            </div>
          </div>

          {{-- <hr> --}}
          <div class="form-group row">
            <div class="col-lg-3 offset-lg-9 text-right">
              {{Form::submit('Generate Report',['class'=>'btn btn-primary'])}}
            </div>
          </div>
          <div class="text-right">
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- /basic layout -->
@endsection
@section('js_footer')
  <script>
  $(document).ready(function(){


    $('.pickadate').pickadate({
      monthsFull: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'],
      weekdaysFull: ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'],
      weekdaysShort: ['Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab', 'Ming'],
      clear: 'effacer',
      formatSubmit: 'yyyy-mm-dd',
      format: 'dddd, dd mmmm, yyyy'
    });

    $(".select-search").select2({
      allowClear:true
    });

  });
  </script>
  <script src="{{url('js/vue.js')}}"></script>
  <script src="{{url('js/axios.js')}}"></script>
  <script src="{{url('limitless/global_assets/js/plugins/notifications/sweet_alert.min.js')}}"></script>
  <script src="{{url('limitless/global_assets/js/plugins/forms/validation/validate.min.js')}}"></script>
  <script src="{{url('js/form-pelaksana.js')}}"></script>

  <script>
  var pelaksana = new Vue({
    el:"#app",
    data:{

    },
  });
  </script>
@endsection
