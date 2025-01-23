<?php

namespace App\Http\Controllers;

use App\Models\invoices;
use Illuminate\Http\Request;

class homecontroller extends Controller
{
    //
    public function index(){
        $count1 = invoices::sum('total');
        $unpagid_count1 = invoices::where('Status', '=', 'غير مدفوعة')->sum('total');
        $paid_sum = invoices::where('Status', '=', 'مدفوعة')->sum('total');
        $partilly_sum = invoices::where('Status', '=', 'مدفوعة جزئيا')->sum('total');
        $count_unpaid = invoices::where('value_Status', '=', 2)->count();
        $count_paid = invoices::where('value_Status', '=', 1)->count();
        $count_paidilly = invoices::where('value_Status', '=', 3)->count();
        $count2 = invoices::count();

        // التأكد من أن $count2 ليس صفرًا
        if ($count2 > 0) {
            $percentage = round(($count_unpaid / $count2) * 100, 2);
            $percentage_paid = round(($count_paid / $count2) * 100, 2);
            $percentage_partilly = round(($count_paidilly / $count2) * 100, 2);
        } else {
            $percentage = 0;
            $percentage_paid = 0;
            $percentage_partilly = 0;
        }

        $count = number_format($count1, 2);

        $chartjs = app()->chartjs
            ->name('pieChartTest')
            ->type('pie')
            ->size(['width' => 400, 'height' => 200])
            ->labels(['Label x', 'Label y'])
            ->datasets([
                [
                    'backgroundColor' => ['#FF6384', '#36A2EB'],
                    'hoverBackgroundColor' => ['#FF6384', '#36A2EB'],
                    'data' => [69, 59]
                ]
            ])
            ->options([]);

        $chartjs2 = app()->chartjs
            ->name('barChartTest')
            ->type('bar')
            ->size(['width' => 300, 'height' => 200])
            ->labels(['الفواتير الغير المدفوعة', 'الفواتير المدفوعة', 'الفواتير المدفوعة جزئيا'])
            ->datasets([
                [
                    "label" => "الفواتير الغير المدفوعة",
                    'backgroundColor' => ['#ec5858'],
                    'data' => [$percentage]
                ],
                [
                    "label" => "الفواتير المدفوعة",
                    'backgroundColor' => ['#81b214'],
                    'data' => [$percentage_paid]
                ],
                [
                    "label" => "الفواتير المدفوعة جزئيا",
                    'backgroundColor' => ['#ff9642'],
                    'data' => [$percentage_partilly]
                ],
            ])
            ->options([]);

        $chartjs_3 = app()->chartjs
            ->name('pieChartTest')
            ->type('pie')
            ->size(['width' => 340, 'height' => 200])
            ->labels(['الفواتير الغير المدفوعة', 'الفواتير المدفوعة', 'الفواتير المدفوعة جزئيا'])
            ->datasets([
                [
                    'backgroundColor' => ['#ec5858', '#81b214', '#ff9642'],
                    'data' => [$percentage, $percentage_paid, $percentage_partilly]
                ]
            ])
            ->options([]);

        return view('dashboard', compact(
            'count',
            'count2',
            'unpagid_count1',
            'count_unpaid',
            'percentage',
            'paid_sum',
            'chartjs',
            'chartjs2',
            'count_paid',
            'percentage_paid',
            'partilly_sum',
            'count_paidilly',
            'percentage_partilly',
            'chartjs_3'
        ));
    }


}
