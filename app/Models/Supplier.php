<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Supplier extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'name',
        'email',
        'phone',
        'address',
        'website',
        'registration_number',
        'vat_number',
        'title'
    ];

    protected $dates = ['deleted_at'];

    // Validation rules for create/update
    public static function rules($id = null)
    {
        return [
            'name' => 'required|string|max:255',
            'title' => 'nullable|string|max:255',
            'email' => 'required|email|unique:suppliers,email,' . $id,
            'phone' => 'nullable|string|max:20',
            'address' => 'nullable|string|max:500',
            'website' => 'nullable|url|max:255',
            'registration_number' => 'nullable|string|unique:suppliers,registration_number,' . $id,
            'vat_number' => 'nullable|string|unique:suppliers,vat_number,' . $id
        ];
    }
}
