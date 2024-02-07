<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class invoices extends Model
{
    use SoftDeletes;
    use HasFactory;
    protected $fillable=['id','invoice_number','user','product','invoice_Date','Due_date','section_id','Amount_collection'
    ,'Amount_Commission','Discount','Value_VAT','Rate_VAT','Total','Status','Value_Status','note','Payment_Date'


];
public function section(){
    return $this->belongsTo(sections::class);

}
}
