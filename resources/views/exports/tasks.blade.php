<table>
    <thead>
    <tr>
        <th>No</th>
        <th>Tanggal PMK</th>
        <th>Pelaksana</th>
        <th>Nama Pegawai PMK</th>
        <th>Bidang</th>
        <th>KCU</th>
        <th>Deskripsi</th>
        {{-- <th>Start Time</th>
        <th>End Time</th> --}}
        <th>Progress</th>
        <th>Status</th>
    </tr>
    </thead>
    <tbody>
    @foreach($tasks as $key=>$value)
      @php
      $new = true;
      @endphp
            @foreach($value->task_detail as $detail)
              <tr>
                @if($new)
                <td rowspan="{{$value->task_detail->count()}}">{{$key+1}}</td>
                <td rowspan="{{$value->task_detail->count()}}">{{date('Y/m/d',strtotime($value->date_task))}}</td>
                <td rowspan="{{$value->task_detail->count()}}">{{$value->employee->employee_name}}</td>
                <td rowspan="{{$value->task_detail->count()}}">{{$value->task_title}}</td>
                <td rowspan="{{$value->task_detail->count()}}">{{$value->employee->bidang->bidang}}</td>
                <td rowspan="{{$value->task_detail->count()}}">{{$value->employee->kcu->kcu}}</td>
                {{-- <td rowspan="{{$value->task_detail->count()}}">{{$value->employee->description}}</td> --}}
                @endif
                <td>{{$detail->description}}</td>
                {{-- <td>{{date('H:i',strtotime($detail->start_time))}}</td>
                <td>{{date('H:i',strtotime($detail->end_time))}}</td> --}}
                @if($new)
                <td rowspan="{{$value->task_detail->count()}}">{{$value->sirkulasi($value->id)->slot->slot}}</td>
                <td rowspan="{{$value->task_detail->count()}}">{{$value->status_header($value->status_id)}}</td>
                @endif
                @php
                $new = false;
                @endphp
            </tr>
            @endforeach
    @endforeach
    </tbody>
</table>
