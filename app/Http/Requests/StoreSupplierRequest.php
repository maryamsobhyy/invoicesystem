<?php

namespace App\Http\Requests;

use App\Models\Supplier;
use Illuminate\Foundation\Http\FormRequest;

class StoreSupplierRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules()
    {
        return Supplier::rules();
    }

    public function messages()
    {
        return [
            'name.required' => 'Supplier name is mandatory',
            'email.unique' => 'This email is already registered',
            'website.url' => 'Please provide a valid website URL'
        ];
    }
}
