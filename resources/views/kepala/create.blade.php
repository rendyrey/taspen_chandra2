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
<div class="content">
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
            {{Form::open(['url'=>$user->role.'/create','files'=>true,'method'=>'post'])}}
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Nama Pegawai</label>
                    <div class="col-lg-9">
                        {{Form::text('employee_name','',['class'=>'form-control'])}}
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Seksi</label>
                    <div class="col-lg-9">
                        {{Form::text('seksi','',['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Bidang</label>
                    <div class="col-lg-9">
                        {{Form::text('bidang','',['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">KCU</label>
                    <div class="col-lg-9">
                        {{Form::text('kcu','',['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Cabang</label>
                    <div class="col-lg-9">
                        {{Form::text('cabang','',['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Nama Pekerjaan</label>
                    <div class="col-lg-9">
                        {{Form::text('nama_pekerjaan','',['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Deskripsi</label>
                    <div class="col-lg-9">
                        {{Form::textarea('Deskripsi','',['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Tanggal Pekerjaan</label>
                    <div class="col-lg-9">
                            <div class="input-group">
                                    <span class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-calendar5"></i></span>
                                    </span>
                                    {{Form::text('tgl_pekerjaan','',['class'=>'form-control pickadate','placeholder'=>'Click to pick a date'])}}
                                    
                                </div>
                    </div>
                </div>
                <div class="form-group row">
                        <label class="col-lg-3 col-form-label">Approval</label>
                        <div class="col-lg-9">
                            {{Form::text('approval','',['class'=>'form-control'])}}
                        </div>
                    </div>
                <div class="form-group row">
                        <label class="col-lg-3 col-form-label">Status Pekerjaan</label>
                        <div class="col-lg-9">
                            {{Form::text('approval','',['class'=>'form-control'])}}
                        </div>
                    </div>
                    <hr>
                    
                <h5 class="card-title">Detail Pekerjaan</h5>
                <div class="form-group row">
                        <label class="col-lg-3 col-form-label">Pekerjaan</label>
                        <div class="col-lg-9">
                            {{Form::text('pekerjaan','',['class'=>'form-control'])}}
                        </div>
                    </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Jenis Pekerjaan</label>
                    <div class="col-lg-9">
                        {{Form::select('jenis_pekerjaan',['New'=>'New','Inprogress'=>'Inprogress','Approve'=>'Approve'],'New',['class'=>'form-control select'])}}
                    </div>
                </div>

                <div class="form-group row align-items-center ">
                    <label class="col-lg-3 col-form-label">Waktu</label>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <span class="input-group-text"><i class="icon-watch2"></i></span>
                            </span>
                            {{Form::text('start_time','',['class'=>'form-control','id'=>'anytime-time-start'])}}
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
                            {{Form::text('start_time','',['class'=>'form-control','id'=>'anytime-time-end'])}}
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                        <label class="col-lg-3 col-form-label">Progress</label>
                        <div class="col-lg-9">
                            {{Form::select('progress',['Done'=>'Done','Pending'=>'Pending'],'Done',['class'=>'form-control select'])}}
                        </div>
                    </div>

                <div class="form-group row">
                        <label class="col-lg-3 col-form-label">Keterangan</label>
                        <div class="col-lg-9">
                            {{Form::textarea('keterangan','',['class'=>'form-control'])}}
                        </div>
                    </div>
                
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">File:</label>
                    <div class="col-lg-9">
                        {{Form::file('file',['class'=>'form-input-styled'])}}
                        {{-- <input type="file" class="form-input-styled" data-fouc> --}}
                        <span class="form-text text-muted">Accepted formats: gif, png, jpg. Max file size 2Mb</span>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Alasan</label>
                    <div class="col-lg-9">
                        {{Form::textarea('alasan','',['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label"></label>
                    <div class="col-lg-9">
                            <div class="form-check">
                                    <label class="form-check-label">
                                        {{Form::checkbox('approve','approve',true,['class'=>'form-check-input-styled-success','data-fouc'])}}
                                        Approve
                                    </label>
                                </div>
                    </div>
                </div>
                <hr>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Pekerjaan</label>
                    <div class="col-lg-9">
                        {{Form::text('pekerjaan','',['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">Jenis Pekerjaan</label>
                    <div class="col-lg-9">
                        {{Form::text('jenis_pekerjaan','',['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group row align-items-center ">
                        <label class="col-lg-3 col-form-label">Waktu</label>
                        <div class="col-lg-4">
                            <div class="input-group">
                                <span class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-watch2"></i></span>
                                </span>
                                {{Form::text('start_time','',['class'=>'form-control','id'=>'anytime-time-start'])}}
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
                                {{Form::text('start_time','',['class'=>'form-control','id'=>'anytime-time-end'])}}
                            </div>
                        </div>
                    </div>
                    
                <div class="form-group row">
                        <label class="col-lg-3 col-form-label">Progress</label>
                        <div class="col-lg-9">
                            {{Form::select('progress',['Done'=>'Done','Pending'=>'Pending'],'Done',['class'=>'form-control select'])}}
                        </div>
                    </div>

                <div class="form-group row">
                        <label class="col-lg-3 col-form-label">Keterangan</label>
                        <div class="col-lg-9">
                            {{Form::textarea('keterangan','',['class'=>'form-control'])}}
                        </div>
                    </div>
                
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label">File:</label>
                    <div class="col-lg-9">
                        {{Form::file('file',['class'=>'form-input-styled'])}}
                        {{-- <input type="file" class="form-input-styled" data-fouc> --}}
                        <span class="form-text text-muted">Accepted formats: gif, png, jpg. Max file size 2Mb</span>
                    </div>
                </div>
                <div class="form-group row">
                        <label class="col-lg-3 col-form-label">Alasan</label>
                        <div class="col-lg-9">
                            {{Form::textarea('alasan','',['class'=>'form-control'])}}
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label"></label>
                        <div class="col-lg-9">
                                <div class="form-check">
                                        <label class="form-check-label">
                                            {{Form::checkbox('approve','approve',true,['class'=>'form-check-input-styled-success','data-fouc'])}}
                                            Approve
                                        </label>
                                    </div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group row">
                            <label class="col-lg-3 col-form-label">Keterangan</label>
                            <div class="col-lg-9">
                                {{Form::textarea('keterangan','',['class'=>'form-control'])}}
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

            $('.select').select2({
            minimumResultsForSearch: Infinity
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

        });
    </script>
    @endsection