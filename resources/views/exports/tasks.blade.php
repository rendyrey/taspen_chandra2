<table>
    <thead>
    <tr>
        <th>No</th>
        <th>Task Title</th>
        <th>Date Task</th>
        <th>Task Description</th>
        <th>Start Time</th>
        <th>End Time</th>
        <th>Status</th>
        <th>Progress</th>
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
                <td rowspan="{{$value->task_detail->count()}}">{{ $value->task_title}}</td>
                <td rowspan="{{$value->task_detail->count()}}">{{date('Y/m/d',strtotime($value->date_task))}}</td>
                @endif
                <td>{{$detail->description}}</td>
                <td>{{date('H:i',strtotime($detail->start_time))}}</td>
                <td>{{date('H:i',strtotime($detail->end_time))}}</td>
                @if($new)
                <td rowspan="{{$value->task_detail->count()}}">{{$value->status_header($value->status_id)}}</td>
                <td rowspan="{{$value->task_detail->count()}}">{{$value->sirkulasi($value->id)->slot->slot}}</td>
                @endif
                @php
                $new = false;
                @endphp
            </tr>
            @endforeach
    @endforeach
    </tbody>
</table>
