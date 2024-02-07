<?php

namespace App\Http\Controllers;

use App\Models\invoices;
use Illuminate\Http\Request;

class homecontroller extends Controller
{
    //
    public function index(){
        $count1=invoices::sum('total');
        $unpagid_count1=invoices::where('Status','=','غير مدفوعة')->sum('total');
        $paid_sum=invoices::where('Status','=','مدفوعة')->sum('total');
        $partilly_sum=invoices::where('Status','=','مدفوعة جزئيا')->sum('total');
        $count_unpaid=invoices::where('value_Status','=',2)->count();
        $count_paid=invoices::where('value_Status','=',1)->count();
        $count_paidilly=invoices::where('value_Status','=',3)->count();
        $count2=invoices::count();
        $percentage=round(($count_unpaid/$count2)*100,2);
        $percentage_paid=rand(($count_paid/$count2)*100,2);
        $percentage_partilly=rand(($count_paidilly/$count2)*100,2);
        $count=number_format($count1,2);
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
         $count_all =invoices::count();
            $count_invoices1 = invoices::where('Value_Status', 1)->count();
            $count_invoices2 = invoices::where('Value_Status', 2)->count();
            $count_invoices3 = invoices::where('Value_Status', 3)->count();

        $chartjs2 = app()->chartjs
            ->name('barChartTest')
            ->type('bar')
            ->size(['width' => 300, 'height' => 200])
            ->labels(['الفواتير الغير المدفوعة', 'الفواتير المدفوعة','الفواتير المدفوعة جزئيا'])
            ->datasets([
                [
                    "label" => "الفواتير الغير المدفوعة",
                    'backgroundColor' => "rgba(38, 185, 154, 0.31)",
                    'borderColor' => "rgba(38, 185, 154, 0.7)",
                    "pointBorderColor" => "rgba(38, 185, 154, 0.7)",
                    "pointBackgroundColor" => "rgba(38, 185, 154, 0.7)",
                    "pointHoverBackgroundColor" => "#fff",
                    "pointHoverBorderColor" => "rgba(220,220,220,1)",
                    'backgroundColor' => ['#ec5858'],
                    'data' => [$percentage]
                ],
                [
                    "label" => "الفواتير المدفوعة",
                    'backgroundColor' => ['#81b214'],
                    'data' => [ $percentage_paid]
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
            ->labels(['الفواتير الغير المدفوعة', 'الفواتير المدفوعة','الفواتير المدفوعة جزئيا'])
            ->datasets([
                [
                    'backgroundColor' => ['#ec5858', '#81b214','#ff9642'],
                    'data' => [$percentage, $percentage_paid,$percentage_partilly]
                ]
            ])
            ->options([]);

        return view('dashboard',compact('count','count2','unpagid_count1','count_unpaid','percentage','paid_sum','chartjs','chartjs2','count_paid','percentage_paid','partilly_sum','count_paidilly','percentage_partilly','chartjs_3'));
    }

}
