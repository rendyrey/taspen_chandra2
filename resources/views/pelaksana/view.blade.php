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
            <a href="{{url($user->role.'/dashboard')}}" class="breadcrumb-item"><i class="icon-home2 mr-2"></i> Dashboard</a>
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
          <h5 class="card-title">Data Kejadian</h5>
          <div class="header-elements">
            <div class="list-icons">
              <a class="list-icons-item" data-action="collapse"></a>
            </div>
          </div>
        </div>

        <div class="card-body">
          {{-- {{Form::open(['id'=>'form','class'=>'form-validate-jquery','method'=>'put','v-on:submit.prevent="simpan"'])}} --}}
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Nama Pegawai</label>
            <div class="col-lg-9">
              {{Form::text('employee_name',$task_header->employee->employee_name,['class'=>'form-control','readonly'])}}
            </div>
          </div>

          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Seksi</label>
            <div class="col-lg-9">
              {{Form::text('seksi',$task_header->employee->seksi->seksi,['class'=>'form-control','readonly'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Bidang</label>
            <div class="col-lg-9">
              {{Form::text('bidang',$task_header->employee->bidang->bidang,['class'=>'form-control','readonly'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">KCU</label>
            <div class="col-lg-9">
              {{Form::text('kcu',$task_header->employee->kcu->kcu,['class'=>'form-control','readonly'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Cabang</label>
            <div class="col-lg-9">
              {{Form::text('cabang',$task_header->employee->cabang->cabang,['class'=>'form-control','readonly'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Nama Pegawai Mengalami Kejadian</label>
            <div class="col-lg-9">
              {{Form::text('nama_pekerjaan',$task_header->nama_pegawai_pmk,['class'=>'form-control','readonly'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">NIP Pegawai Mengalami Kejadian</label>
            <div class="col-lg-9">
              {{Form::text('nip',$task_header->nip,['class'=>'form-control','readonly'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Kronologi Kejadian</label>
            <div class="col-lg-9">
              {{Form::textarea('Deskripsi',$task_header->description,['class'=>'form-control','readonly'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Tanggal Kejadian</label>
            <div class="col-lg-9">
              <div class="input-group">
                <span class="input-group-prepend">
                  <span class="input-group-text"><i class="icon-calendar5"></i></span>
                </span>
                {{Form::text('tgl_pekerjaan',$task_header->date_task,['class'=>'form-control','placeholder'=>'Click to pick a date','readonly'])}}

              </div>
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Approval</label>
            <div class="col-lg-9">
              {{Form::text('approval',$task_header->user->employee->employee_name,['class'=>'form-control','readonly'])}}
            </div>
          </div>
          {{-- <div class="form-group row">
          <label class="col-lg-3 col-form-label">Status Pekerjaan</label>
          <div class="col-lg-9">
          {{Form::text('status_id',$task_header->status_header($task_header->status_id),['class'=>'form-control'])}}
        </div>
      </div> --}}
      <hr>

      <h5 class="card-title">Detail Kejadian</h5>
      @foreach($task_header->task_detail as $key=>$value)
        <div class="form-group row">
          <label class="col-lg-3 col-form-label">Instansi atau pangkat</label>
          <div class="col-lg-9">
            {{Form::text('pekerjaan[]',$value->description,['class'=>'form-control','readonly'])}}
          </div>
        </div>
        <div class="form-group row">
          <label class="col-lg-3 col-form-label">Status Keluarga</label>
          <div class="col-lg-9">
            {{Form::text('jenis_pekerjaan[]',$value->status_keluarga($value->status_keluarga)->description,['class'=>'form-control','readonly'])}}
          </div>
        </div>

        <div class="form-group row">
          <label class="col-lg-3 col-form-label">Tanggal PMK</label>
          <div class="col-lg-9">
            <div class="input-group">
              <span class="input-group-prepend">
                <span class="input-group-text"><i class="icon-calendar5"></i></span>
              </span>
              {{Form::text('tanggal_pmk[]',$value->tanggal_pmk,['class'=>'form-control','placeholder'=>'Click to pick a date','readonly'])}}
            </div>
          </div>
        </div>

        <div class="form-group row">
          <label class="col-lg-3 col-form-label">Tanggal Lapor</label>
          <div class="col-lg-9">
            <div class="input-group">
              <span class="input-group-prepend">
                <span class="input-group-text"><i class="icon-calendar5"></i></span>
              </span>
              {{Form::text('tanggal_lapor[]',$value->tanggal_lapor,['class'=>'form-control','placeholder'=>'Click to pick a date','readonly'])}}
            </div>
          </div>
        </div>

        <!-- <div class="form-group row align-items-center ">
          <label class="col-lg-3 col-form-label">Waktu</label>
          <div class="col-lg-4">
            <div class="input-group">
              <span class="input-group-prepend">
                <span class="input-group-text"><i class="icon-watch2"></i></span>
              </span>
              {{Form::text('start_time[]',date('H:i',strtotime($value->start_time)),['class'=>'form-control','readonly'])}}
            </div>
          </div>
          <div class="col-lg-1 text-center">
            To
          </div>
          <div class="col-lg-4">
            <div class="input-group">
              <span class="input-group-prepend">
                <span class="input-group-text"><i class="icon-watch2"></i></span>
              </span>
              {{Form::text('end_time[]',date('H:i',strtotime($value->end_time)),['class'=>'form-control','readonly'])}}
            </div>
          </div>
        </div> -->

        <div class="form-group row">
          <label class="col-lg-3 col-form-label">Program</label>
          <div class="col-lg-9">
            {{Form::text('progress[]',$value->progress($value->progress)->description,['class'=>'form-control','readonly'])}}
          </div>
        </div>

        <div class="form-group row">
          <label class="col-lg-3 col-form-label">Keterangan</label>
          <div class="col-lg-9">
            {{Form::textarea('remark[]',$value->remark,['class'=>'form-control','readonly'])}}
          </div>
        </div>

        <div class="form-group row">
          <label class="col-lg-3 col-form-label">File:</label>
          <div class="col-lg-9">
            <a href="{{$value->file($value->file)}}" download class="btn btn-primary">Download File</a>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-lg-3 col-form-label"></label>
          <div class="col-lg-9">
            <div class="form-check">
              <label class="form-check-label">
                {{Form::checkbox('approve[]','Approve',true,['class'=>'form-check-input-styled-success approve','data-fouc','disabled'])}}
                Approve
              </label>
            </div>
          </div>
        </div>
        <hr>
      @endforeach

      <hr>
      {{-- <div class="form-group row">
        <label class="col-lg-3 col-form-label">Keterangan</label>
        <div class="col-lg-9">
          {{Form::textarea('keterangan','',['class'=>'form-control'])}}
        </div>
      </div> --}}

      <!-- Sirkulasi -->
      <div class="form-group row">
        <table class="table datatable-ajax">
        <thead>
          <th>No</th>
          <th>Penerima</th>
          <th>Contact Person</th>
          <th>Status</th>
          <th>Keterangan</th>
        </thead>
        <tbody>
          @foreach($sirkulasi as $key=>$value)
            <tr>
              <td>{{$key+1}}</td>
              <td>{{$value->slot->slot}}</td>
              <td>{{$value->user->employee->no_hp}}</td>
              <td>{{$value->status}}</td>
              <td>{{$value->remark}}</td>
            </tr>
          @endforeach
        </tbody>
        </table>
      </div>

      <div class="form-group row">
        <div class="col-lg-6">
          <div class="text-center">
            <a href="{{url($user->role.'/dashboard')}}" name="submit" class="btn btn-info">Kembali ke Dashboard</a>
          </div>
        </div>
        {{-- <div class="col-lg-6">
          <div class="text-center">
            <button type="submit" name="submit" value="teruskan" id="teruskan" class="btn btn-success">Teruskan<i class="icon-checkmark3 ml-2"></i></button>
          </div>
        </div> --}}
      </div>
    {{-- </form> --}}
  </div>
</div>
<!-- /basic layout -->
@endsection
@section('js_footer')
  <script>
  $(document).ready(function(){
    $('.pickadate').pickadate({
      // monthsFull: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'],
      // weekdaysFull: ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'],
      // weekdaysShort: ['Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab', 'Ming'],
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
    $('.anytime-time-start').AnyTime_picker({
      format: '%H:%i'
    });
    $('.anytime-time-end').AnyTime_picker({
      format: '%H:%i'
    });

    $(".approve").change(function(){
      if ($('.approve:checked').length == $('.approve').length) {
        $("#teruskan").prop('disabled',false);
      }else{
        $("#teruskan").prop('disabled',true);
      }
    });

  });
  </script>
@endsection
