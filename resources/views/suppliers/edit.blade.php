@extends('layouts.master')
@section('title')
    تعديل المورد
@stop
@section('css')
    <!-- Internal Data table css -->
    <link href="{{ URL::asset('assets/plugins/datatable/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet" />
    <link href="{{ URL::asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
    <!--Internal   Notify -->
    <link href="{{ URL::asset('assets/plugins/notify/css/notifIt.css') }}" rel="stylesheet" />
@endsection
@section('page-header')
    <!-- breadcrumb -->
    <div class="breadcrumb-header justify-content-between">
        <div class="my-auto">
            <div class="d-flex">
                <h4 class="content-title mb-0 my-auto">{{ trans('main_trans.suppliers') }}</h4><span
                    class="text-muted mt-1 tx-13 mr-2 mb-0">/ {{ trans('main_trans.Edit Supplier') }}
                </span>
            </div>
        </div>
    </div>
    <!-- breadcrumb -->
@endsection
@section('content')

    @if (session()->has('success'))
        <script>
            window.onload = function() {
                notif({
                    msg: "{{ session('success') }}",
                    type: "success"
                })
            }
        </script>
    @endif

    <!-- row -->
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('suppliers.update', $supplier->id) }}" method="POST">
                        @csrf
                       
                        <div class="row">
                            <!-- Name -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">{{ trans('main_trans.Name') }}</label>
                                    <input type="text" class="form-control" id="name" name="name"
                                        value="{{ old('name', $supplier->name) }}" required>
                                </div>
                            </div>

                            <!-- Title -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="title">{{ trans('main_trans.Title') }}</label>
                                    <input type="text" class="form-control" id="title" name="title"
                                        value="{{ old('title', $supplier->title) }}">
                                </div>
                            </div>

                            <!-- Email -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">{{ trans('main_trans.Email') }}</label>
                                    <input type="email" class="form-control" id="email" name="email"
                                        value="{{ old('email', $supplier->email) }}" required>
                                </div>
                            </div>

                            <!-- Phone -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone">{{ trans('main_trans.Phone') }}</label>
                                    <input type="text" class="form-control" id="phone" name="phone"
                                        value="{{ old('phone', $supplier->phone) }}">
                                </div>
                            </div>

                            <!-- Address -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="address">{{ trans('main_trans.Adress') }}</label>
                                    <input type="text" class="form-control" id="address" name="address"
                                        value="{{ old('address', $supplier->address) }}">
                                </div>
                            </div>

                            <!-- Website -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="website">{{ trans('main_trans.Website') }}</label>
                                    <input type="url" class="form-control" id="website" name="website"
                                        value="{{ old('website', $supplier->website) }}">
                                </div>
                            </div>

                            <!-- Registration Number -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="registration_number">{{ trans('main_trans.Registration Number') }}</label>
                                    <input type="text" class="form-control" id="registration_number" name="registration_number"
                                        value="{{ old('registration_number', $supplier->registration_number) }}">
                                </div>
                            </div>

                            <!-- VAT Number -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="vat_number">{{ trans('main_trans.Vat Number') }}</label>
                                    <input type="text" class="form-control" id="vat_number" name="vat_number"
                                        value="{{ old('vat_number', $supplier->vat_number) }}">
                                </div>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center">
                            <button type="submit" class="btn btn-primary">Save</button>
                            
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- row closed -->
@endsection
@section('js')
    <!-- Internal Notify js -->
    <script src="{{ URL::asset('assets/plugins/notify/js/notifIt.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/notify/js/notifit-custom.js') }}"></script>
@endsection
