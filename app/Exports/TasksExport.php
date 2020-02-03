<?php
namespace App\Exports;

use App\TaskHeader;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;

class TasksExport implements FromView, ShouldAutoSize, WithEvents
{

  public function __construct($start_date,$end_date,$bidang_id,$employee_id,$employees)
    {
        $this->start_date = $start_date;
        $this->end_date = $end_date;
        $this->bidang_id = $bidang_id;
        $this->employee_id = $employee_id;
        $this->employees = $employees;
    }

  public function registerEvents(): array
{
    return [
        AfterSheet::class    => function(AfterSheet $event) {
            // ... HERE YOU CAN DO ANY FORMATTING
            $cellRange = 'A:I';
            $styleArray = [
              'alignment' => [
                'vertical' => Alignment::VERTICAL_CENTER
              ]
            ];
            $event->sheet->getDelegate()->getStyle($cellRange)->applyFromArray($styleArray);
            $cellRange = 'A1:H1';
            $styleArray = [
              'font' => [
                'bold' => true
              ]
            ];
            $event->sheet->getDelegate()->getStyle($cellRange)->applyFromArray($styleArray);
            $event->sheet->getDelegate()->getStyle('A')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('B')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('C')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('D')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('E')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('F')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            // $event->sheet->getDelegate()->getStyle('G')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('H')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('I')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

            $event->sheet->getDelegate()->getStyle('B')->getAlignment()->setWrapText(true);
            $event->sheet->getDelegate()->getStyle('D')->getAlignment()->setWrapText(true);
            $event->sheet->getDelegate()->getStyle('G')->getAlignment()->setWrapText(true);
        },
    ];
}
  // public function columnFormats(): array
  //   {
  //       return [
  //           'C' => NumberFormat::FORMAT_DATE_YYYYMMDD,
  //           'G' => Alignment::HORIZONTAL_CENTER,
  //       ];
  //   }

  public function view(): View
    {
        $task_header = TaskHeader::where('date_task','>=',$this->start_date);
        $task_header = $task_header->where('date_task','<=',$this->end_date);
        // $task_header = $task_header->where('employee_id',$this->employee_id);
        $task_header = $task_header->whereIn('employee_id',$this->employees);
        $task_header = $task_header->get();
        // return view('exports.tasks', [
        //     'tasks' => TaskHeader::where('date_task','>=',$this->start_date)
        //     ->where('date_task','<=',$this->end_date)
        //     // ->where('bidang_id',$this->bidang_id)
        //     ->whereIn('employee_id',$this->employee_id)
        //     ->get()
        // ]);
        return view('exports.tasks',['tasks'=>$task_header]);
    }
}
