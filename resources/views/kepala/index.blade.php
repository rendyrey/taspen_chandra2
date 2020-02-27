@extends('layouts.layout')
@section('js_header')
  <script src="{{url('limitless/global_assets/js/plugins/tables/datatables/datatables.min.js')}}"></script>
  <script src="{{url('limitless/global_assets/js/plugins/forms/selects/select2.min.js')}}"></script>
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
            <a href="{{url($user->role.'/dashboard')}}" class="breadcrumb-item">{{$login->employee->position->slot}}</a>
          </div>

          <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
        </div>

      </div>
    </div>
    <!-- /page header -->
    <!-- Content area -->
    <div class="content">
      <!-- Ajax sourced data -->
      <div class="card">
        <div class="card-header header-elements-inline">
          <h5 class="card-title">Data Kejadian</h5>
          <div class="header-elements">
            <div class="list-icons">
              <a class="list-icons-item" data-action="collapse"></a>
              <a class="list-icons-item" data-action="reload"></a>
              {{-- <a class="list-icons-item" data-action="remove"></a> --}}
            </div>
          </div>
        </div>

        <div class="card-body">
          {{-- DataTables has the ability to read data from virtually any <code>JSON</code> data source that can be obtained by <code>Ajax</code>. This can be done, in its most simple form, by setting the <code>ajax</code> option to the address of the <code>JSON</code> data source. The example below shows DataTables loading data for a table from <code>arrays</code> as the data source (object parameters can also be used through the <code>columns.data</code> option). --}}
          {{-- <a href="{{url($user->role.'/create')}}"><button class="btn btn-primary btn-sm">Add Data</button></a> --}}
        </div>

        <table class="table datatable-ajax">
          <thead>
            <tr>
              <th>No</th>
              {{-- <th>Task Title</th> --}}
              <th>Tanggal Kejadian</th>
              <th>Pelaporsss</th>
              <th>Pegawai Mengalami Kejadian</th>
              <th>Bidang</th>
              <th>KCU</th>
              <th>Statu</th>
              <th>Progre</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach($task_header as $key=>$value)
              <tr>
                <td>{{$key+1}}</td>
                {{-- <td>{{$value->task_title}}</td> --}}
                <td>{{$value->date_task}}</td>
                <td>{{$value->employee->employee_name}}</td>
                <td>{{$value->nama_pegawai_pmk}}</td>
                <td>{{$value->employee->bidang->bidang}}</td>
                <td>{{$value->employee->kcu->kcu}}</td>
                <td>{{$value->status_header($value->status_id)}}</td>
                <td>{{$value->sirkulasi($value->id)->slot->slot}}</td>
                <td>
                  @if($value->slot_aktif($value->id,$slot_aktif))
                    <a href="{{url($user->role.'/edit/'.$value->id)}}"><button class="btn btn-primary">Update</button></a>
                  @else
                    <a href="{{url($user->role.'/view/'.$value->id)}}"><button class="btn btn-primary">View</button></a>
                  @endif

                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      <!-- /ajax sourced data -->
    </div>
    <!-- /content area -->
  @endsection
  @section('js_footer')
    <script>
    // AJAX sourced data
    // Setting datatable defaults
    $.extend( $.fn.dataTable.defaults, {
      autoWidth: false,
      dom: '<"datatable-header"fl><"datatable-scroll"t><"datatable-footer"ip>',
      language: {
        search: '<span>Filter:</span> _INPUT_',
        searchPlaceholder: 'Type to filter...',
        lengthMenu: '<span>Show:</span> _MENU_',
        paginate: { 'first': 'First', 'last': 'Last', 'next': $('html').attr('dir') == 'rtl' ? '&larr;' : '&rarr;', 'previous': $('html').attr('dir') == 'rtl' ? '&rarr;' : '&larr;' }
      }
    });
    $('.datatable-ajax').dataTable({
      columnDefs: [ {
        targets  : 0,
        orderable: false,
        searchable:false
      }],
      ajax: ""
    });
    </script>
  @endsection
