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

  public function __construct($start_date,$end_date,$bidang_id,$employee_id)
    {
        $this->start_date = $start_date;
        $this->end_date = $end_date;
        $this->bidang_id = $bidang_id;
        $this->employee_id = $employee_id;
    }

  public function registerEvents(): array
{
    return [
        AfterSheet::class    => function(AfterSheet $event) {
            // ... HERE YOU CAN DO ANY FORMATTING
            $cellRange = 'A:G';
            $styleArray = [
              'alignment' => [
                'vertical' => Alignment::VERTICAL_CENTER
              ]
            ];
            $event->sheet->getDelegate()->getStyle($cellRange)->applyFromArray($styleArray);
            $cellRange = 'A1:G1';
            $styleArray = [
              'font' => [
                'bold' => true
              ]
            ];
            $event->sheet->getDelegate()->getStyle($cellRange)->applyFromArray($styleArray);
            $event->sheet->getDelegate()->getStyle('A')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('C')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('E')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('F')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $event->sheet->getDelegate()->getStyle('G')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

            $event->sheet->getDelegate()->getStyle('D')->getAlignment()->setWrapText(true);
            $event->sheet->getDelegate()->getStyle('B')->getAlignment()->setWrapText(true);
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

        return view('exports.tasks', [
            'tasks' => TaskHeader::where('date_task','>=',$this->start_date)
            ->where('date_task','<=',$this->end_date)
            // ->where('bidang_id',$this->bidang_id)
            ->where('employee_id',$this->employee_id)
            ->get()
        ]);
    }
}
