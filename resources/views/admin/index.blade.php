@extends('layouts.admin_layout')
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
          <h5 class="card-title">Data Pelaksana</h5>
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
          <a href="{{url('pelaksana/create')}}"><button class="btn btn-primary btn-sm">Add Data</button></a>
        </div>

        <table class="table datatable-ajax">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama</th>
              <th>E-mail</th>
              <th>Position</th>
              <th>Cabang</th>
              <th>KCU</th>
              <th>Seksi</th>
              <th>Bidang</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
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
