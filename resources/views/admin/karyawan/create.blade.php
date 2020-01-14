@extends('layouts.admin_layout')
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
            <a href="" class="breadcrumb-item"><i class="icon-home2 mr-2"></i> Dashboard</a>
            <a href="{{url($user->role.'/karyawan')}}" class="breadcrumb-item">Karyawan</a>
            <a href="" class="breadcrumb-item">Create</a>
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
          {{Form::open(['files'=>true,'class'=>'form-validate-jquery','id'=>'form','v-on:submit.prevent="simpan"'])}}
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">NIK</label>
            <div class="col-lg-9">
              {{Form::text('nik',old('nik'),['class'=>'form-control','placeholder'=>'NIK'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Karyawan</label>
            <div class="col-lg-9">
              {{Form::text('employee_name',old('employee_name'),['class'=>'form-control','placeholder'=>'Nama Karyawan'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Position</label>
            <div class="col-lg-9">
              {{Form::select('position_id',$position,old('position_id'),['id'=>'position','class'=>'form-control select-search data-fouc','data-placeholder'=>'Pilih Position'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Bidang</label>
            <div class="col-lg-9">
              {{Form::select('bidang_id',$bidang,old('bidang_id'),['id'=>'bidang','class'=>'form-control select-search data-fouc','data-placeholder'=>'Pilih Bidang','disabled'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Seksi</label>
            <div class="col-lg-9">
              {{Form::select('seksi_id',$seksi,old('seksi_id'),['id'=>'seksi','class'=>'form-control select-search data-fouc','data-placeholder'=>'Pilih Seksi','disabled'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">KCU</label>
            <div class="col-lg-9">
              {{Form::select('kcu_id',$kcu,old('kcu_id'),['id'=>'kcu','class'=>'form-control select-search data-fouc','data-placeholder'=>'Pilih KCU','disabled'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Cabang</label>
            <div class="col-lg-9">
              {{Form::select('cabang_id',$cabang,old('cabang_id'),['id'=>'cabang','class'=>'form-control select-search data-fouc','data-placeholder'=>'Pilih Cabang','disabled'])}}
            </div>
          </div>
          <hr>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Username</label>
            <div class="col-lg-9">
              {{Form::text('username','',['class'=>'form-control','placeholder'=>'Username'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">E-mail</label>
            <div class="col-lg-9">
              {{Form::email('email','',['class'=>'form-control','placeholder'=>'E-mail'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label"></label>
            <div class="col-lg-9">
              <div class="form-check">
                <label class="form-check-label">
                  {{Form::checkbox('active','active',true,['class'=>'form-check-input-styled-success','data-fouc'])}}
                  Active
                </label>
              </div>
            </div>
          </div>


          <div class="text-right">
            <button type="submit" class="btn btn-primary">Submit form <i class="icon-paperplane ml-2"></i></button>
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
    <script src="{{url('js/form-karyawan.js')}}"></script>
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
            axios.post("{{url("$user->role/karyawan/create")}}",formData).then(function(response){
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

        }
      }
    });
    </script>
    <script>
    $(document).ready(function(){
      $("select option[value='0']").disabled();
      $('.pickadate').pickadate({
        monthsFull: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'],
        weekdaysFull: ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'],
        weekdaysShort: ['Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab', 'Ming'],
        clear: 'effacer',
        formatSubmit: 'yyyy-mm-dd',
        format: 'dddd, dd mmmm, yyyy'
      });

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

      $("#seksi").select2({
        language:{
          noResults:function(){
            return "Bidang belum dipilih / tidak ada seksi di bidang tersebut";
          }
        },
        allowClear:true
      });

      // $("#bidang").change(function(){
      //   var bidang_id = $(this).val();
      //   $.ajax({
      //     url:"{{url('administrator/seksi/get-by-bidang/')}}/"+bidang_id,
      //     type:"GET",
      //     success:function(result){
      //       $("#seksi").html(result);
      //     }
      //   });
      // });

      $("#position").change(function(){
        var position = $(this).find('option:selected').text().toLowerCase();
        $("#bidang").prop('disabled',false);
        $("#seksi").prop('disabled',false);
        $("#kcu").prop('disabled',false);
        $("#cabang").prop('disabled',false);

        if(position == 'pelaksana'){
          $("select").not($(this)).val([]).trigger('change');
          $("#bidang").prop('disabled',false);
          $("#seksi").prop('disabled',false);
          $("#kcu").prop('disabled',false);
          $("#cabang").prop('disabled',false);
          $("#bidang option[value='0']").hide();
        }else if(position == 'kepala seksi'){
          $("select").not($(this)).val([]).trigger('change');
          $("#bidang").prop('disabled',false);
          $("#seksi").prop('disabled',false);
          $("#kcu").prop('disabled',false);
          $("#cabang").prop('disabled',false);
        }else if(position == 'kepala bidang'){
          $("select").not($(this)).val([]).trigger('change');
          $("#bidang").prop('disabled',false);
          $("#seksi").prop('disabled',true);
          $("#kcu").prop('disabled',false);
          $("#cabang").prop('disabled',false);
          $("#seksi").val(0).change();
        }else if(position == 'wakil kepala cabang'){
          $("select").not($(this)).val([]).trigger('change');
          $("#bidang").prop('disabled',true);
          $("#seksi").prop('disabled',true);
          $("#cabang").prop('disabled',false);
          $("#kcu").prop('disabled',false);
        }else if(position == 'kepala cabang'){
          $("select").not($(this)).val([]).change();
          $("#bidang").val(0).change();
          $("#seksi").val(0).change();
          $("#kcu").val(0).change();
          $("#bidang").prop('disabled',true);
          $("#seksi").prop('disabled',true);
          $("#kcu").prop('disabled',true);
          $("#cabang").prop('disabled',false);
        }


      });
    });
    </script>
  @endsection
