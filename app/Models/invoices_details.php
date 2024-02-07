<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class invoices_details extends Model
{
    use HasFactory;
    protected $fillable=['id','id_Invoice','invoice_number','note','product','invoice_Date','Due_date','user','Section','Amount_collection'
    ,'Amount_Commission','Discount','Value_VAT','Rate_VAT','Total','Status','Value_Status','note','Payment_Date'
];
}
