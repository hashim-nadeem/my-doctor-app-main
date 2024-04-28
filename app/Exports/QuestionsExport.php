<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

/**
 * Summary of QuestionsExport
 */
class QuestionsExport implements FromArray, WithHeadings , WithStyles
{

    /**
     * Summary of headings
     * @return array
     */
    public function headings(): array
    {
        return [
            'Question',
            'Option1',
            'Option2',
            'Option3',
            'Option4',
            'CorrectOption',
            // Define your custom headers here
        ];
    }

    /**
     * Summary of array
     * @return array
     */
    public function array(): array
    {

        return [];
        
    }

    /**
     * Summary of styles
     * @param \App\Exports\Worksheet $sheet
     * @return void
     */
    public function styles(Worksheet $sheet)
    {
        
        $sheet->getStyle('A1:F1')->getFont()->setBold(true);

    }


}
