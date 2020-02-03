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
            <a href="{{url($user->role.'/pelaksana')}}" class="breadcrumb-item">Pelaksana</a>
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
          <h5 class="card-title">Form Data Pelaksana</h5>
          <div class="header-elements">
            <div class="list-icons">
              <a class="list-icons-item" data-action="collapse"></a>
            </div>
          </div>
        </div>

        <div class="card-body">
          {{Form::open(['url'=>'pelaksana/create','files'=>true,'method'=>'post','class'=>'form-validate-jquery','id'=>'form'])}}
          <input type="hidden" name="employee_id" value={{$employee->id}}>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Nama Pegawai</label>
            <div class="col-lg-9">
              {{Form::text('employee_name',$employee->employee_name,['class'=>'form-control','disabled'])}}
            </div>
          </div>

          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Seksi</label>
            <div class="col-lg-9">
              {{Form::text('seksi',$employee->seksi->seksi,['class'=>'form-control','disabled'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Bidang</label>
            <div class="col-lg-9">
              {{Form::text('bidang',$employee->bidang->bidang,['class'=>'form-control','disabled'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">KCU</label>
            <div class="col-lg-9">
              {{Form::text('kcu',$employee->kcu->kcu,['class'=>'form-control','disabled'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Cabang</label>
            <div class="col-lg-9">
              {{Form::text('cabang',$employee->cabang->cabang,['class'=>'form-control','disabled'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Nama Pegawai Mengalami PMK</label>
            <div class="col-lg-9">
              {{Form::text('task_title','',['class'=>'form-control'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">NIP Pegawai Mengalami PMK</label>
            <div class="col-lg-9">
              {{Form::text('nip','',['class'=>'form-control'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Deskripsi</label>
            <div class="col-lg-9">
              {{Form::textarea('description_header','',['class'=>'form-control'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Tanggal Kejadian</label>
            <div class="col-lg-9">
              <div class="input-group">
                <span class="input-group-prepend">
                  <span class="input-group-text"><i class="icon-calendar5"></i></span>
                </span>
                {{Form::text('date_task','',['class'=>'form-control pickadate','placeholder'=>'Click to pick a date'])}}
              </div>
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Approval</label>
            <div class="col-lg-9">
              {{Form::select('user_approval_id',$user_approval,'',['class'=>'form-control select-search'])}}
            </div>
          </div>
          <div class="form-group row">
            <label class="col-lg-3 col-form-label">Status Laporan</label>
            <div class="col-lg-9">
              {{Form::select('',$status_pekerjaan,1,['class'=>'form-control select-search','disabled'])}}
              <input type="hidden" name="status_id" value="1">
            </div>
          </div>
          <hr>

          <h5 class="card-title">Detail Kejadian</h5>
          <div v-for="(detail, indexDetail) in detail_pekerjaan">
            <div class="form-group row">
              <label class="col-lg-3 col-form-label">Instansi/Pangkat</label>
              <div class="col-lg-9">
                {{Form::text("description[]",'',['class'=>'form-control','required'])}}
              </div>
            </div>
            <div class="form-group row">
              <label class="col-lg-3 col-form-label">Status Keluarga</label>
              <div class="col-lg-9">
                <select name="task_type[]" class="form-control" v-bind:id="'select_pekerjaan'+indexDetail" data-placeholder="Pilih Status Keluarga" required>
                  @foreach($jenis_pekerjaan as $key=>$value)
                    <option value="{{$key}}">{{$value}}</option>
                  @endforeach
                </select>
              </div>
            </div>

            <div class="form-group row">
              <label class="col-lg-3 col-form-label">Tanggal PMK</label>
              <div class="col-lg-9">
                <div class="input-group">
                  <span class="input-group-prepend">
                    <span class="input-group-text"><i class="icon-calendar5"></i></span>
                  </span>
                  {{Form::text('tanggal_pmk[]','',['class'=>'form-control pickadate','placeholder'=>'Click to pick a date'])}}
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
                  {{Form::text('tanggal_lapor[]','',['class'=>'form-control pickadate','placeholder'=>'Click to pick a date'])}}
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
                  <input type="text" name="start_time[]" class="form-control" v-bind:id="'anytime-time-start'+indexDetail">
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
                  <input type="text" name="end_time[]" class="form-control" v-bind:id="'anytime-time-end'+indexDetail">
                </div>
              </div>
            </div> -->
            <!-- <div class="form-group row">
              <label class="col-lg-3 col-form-label">Status Detail Pekerjaan</label>
              <div class="col-lg-9">
                <select name="detail_status_id[]" class="form-control" v-bind:id="'select_status'+indexDetail" data-placeholder="Pilih Status Detail Pekerjaan" required>
                  @foreach($status_detail as $key=>$value)
                    <option value="{{$key}}">{{$value}}</option>
                  @endforeach
                </select>
              </div>
            </div> -->
            <div class="form-group row">
              <label class="col-lg-3 col-form-label">Progress</label>
              <div class="col-lg-9">
                <select name="progress[]" class="form-control" v-bind:id="'select_progress'+indexDetail" required data-placeholder="Pilih Progress">
                  @foreach($progress_detail as $key=>$value)
                    <option value="{{$key}}">{{$value}}</option>
                  @endforeach

                </select>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-lg-3 col-form-label">Keterangan</label>
              <div class="col-lg-9">
                {{Form::textarea('remark[]','',['class'=>'form-control'])}}
              </div>
            </div>
            <div class="form-group row">
              <label class="col-lg-3 col-form-label">File:</label>
              <div class="col-lg-9">
                <input type="file" name="file[]" v-bind:id="'form-input-styled'+indexDetail">
                {{-- {{Form::file('file[]',['class'=>'form-input-styled'])}} --}}
                {{-- <input type="file" class="form-input-styled" data-fouc> --}}
                <!-- <span class="form-text text-muted">Accepted formats: gif, png, jpg. Max file size 2Mb</span> -->
              </div>
            </div>
            <hr>
          </div>
          <div class="form-group row">
            <div class="col-lg-1 offset-lg-10 text-right">
              <button type="button" class="btn btn-sm bg-danger-400 btn-float rounded-round" title="Kurangi detail pekerjaan" v-if="idx_detail != 0" v-on:click="kurang_detail(idx_detail)"><i class="fa fa-minus"></i></button>
            </div>
            <div class="col-lg-1">
              <button id="tambah" v-bind:value="idx_detail" type="button" class="btn btn-sm bg-success-400 btn-float rounded-round" title="Tambah detail pekerjaan" v-on:click="tambah_detail()"><i class="fa fa-plus"></i></button>
            </div>
          </div>
          {{-- <hr> --}}
          <div class="form-group row">
            <div class="col-lg-3 offset-lg-9 text-right">
              <button type="submit" class="btn btn-primary">Submit form <i class="icon-paperplane ml-2"></i></button>
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
    $("#tambah").on('click',function(){
      var index = $(this).val();

      $('#select_pekerjaan'+index).select2({
        minimumResultsForSearch: Infinity,
        allowClear:true
      });

      $('#select_progress'+index).select2({
        minimumResultsForSearch: Infinity,
        allowClear:true
      });

      $('#select_status'+index).select2({
        minimumResultsForSearch: Infinity,
        allowClear:true
      });

      // Time picker
      $('#anytime-time-start'+index).pickatime({
        format: 'HH:i',
        interval:15
      });
      $('#anytime-time-end'+index).pickatime({
        format: 'HH:i',
        interval:15
      });

      $('#form-input-styled'+index).uniform({
        fileButtonClass: 'action btn bg-pink-400'
      });
    });

    $('.pickadate').pickadate({
      // monthsFull: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'],
      // weekdaysFull: ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'],
      // weekdaysShort: ['Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab', 'Ming'],
      clear: 'effacer',
      // formatSubmit: 'yyyy-mm-dd',
      format: 'yyyy-mm-dd'
    });

    $(".select-search").select2({
      allowClear:true
    });

    $('#select_pekerjaan0').select2({
      minimumResultsForSearch: Infinity,
      allowClear:true

    });

    $('#select_progress0').select2({
      minimumResultsForSearch: Infinity,
      allowClear:true

    });

    $('#select_status0').select2({
      minimumResultsForSearch: Infinity,
      allowClear:true
    });

    // Time picker
    $('#anytime-time-start0').pickatime({
      format: 'HH:i',
      interval:15
    });
    // $('.pickatime-intervals').pickatime({
    //     interval: 150
    // });
    $('#anytime-time-end0').pickatime({
      format: 'HH:i',
      interval:15
    });

    $('#form-input-styled0').uniform({
      fileButtonClass: 'action btn bg-pink-400'
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
      detail_pekerjaan:[
        {idx:0}
      ],
      idx_detail:0,
    },
    methods:{
      tambah_detail:function(){
        this.idx_detail++;
        this.detail_pekerjaan.push({idx:this.idx_detail});
      },
      kurang_detail:function(index){
        this.detail_pekerjaan.splice(index,1);
        this.idx_detail--;
      },
      simpan:function(){
        var form = document.getElementById('form');
        var formData = new FormData(form)
        var formV = $("#form");
        formV.validate();
        if(formV.valid()){
          $('#spinner').show();
          axios.post('{{url('pelaksana/create/')}}',formData).then(function(response){
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
@endsection
