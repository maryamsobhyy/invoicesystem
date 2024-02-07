@extends('layouts.master')
@section('css')
@endsection
@section('page-header')
				<!-- breadcrumb -->
				<div class="breadcrumb-header justify-content-between">
					<div class="my-auto">
						<div class="d-flex">
							<h4 class="content-title mb-0 my-auto">INVOICES</h4><span class="text-muted mt-1 tx-13 mr-2 mb-0">/ details,attachments</span>
						</div>
					</div>

				</div>
				<!-- breadcrumb -->
@endsection
@section('content')
@if (session()->has('Add'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>{{ session()->get('Add') }}</strong>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif
				<!-- row -->
				<div class="row">
                    <div class="col-xl-12">
						<!-- div -->
						<div class="card" id="tabs-style4">
							<div class="card-body">
								<div class="main-content-label mg-b-5">

								</div>
								<p class="mg-b-20"></p>
								<div class="text-wrap">
									<div class="example">
										<div class="d-md-flex">
											<div class="">
												<div class="panel panel-primary tabs-style-4">
													<div class="tab-menu-heading">
														<div class="tabs-menu ">
															<!-- Tabs -->
															<ul class="nav panel-tabs ml-3">
																<li class=""><a href="#tab21" class="active" data-toggle="tab"><i class="fa fa-laptop"></i>The whole invoice</a></li>
																<li><a href="#tab22" data-toggle="tab"><i class="fa fa-cube"></i> Payment statuses </a></li>
																<li><a href="#tab23" data-toggle="tab"><i class="fa fa-cogs"></i> The invoice attachments</a></li>

															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="tabs-style-4 ">
												<div class="panel-body tabs-menu-body">
													<div class="tab-content">
														<div class="tab-pane active" id="tab21">
                                                            <div class="table-responsive mt-15">

                                                                <table class="table table-striped" style="text-align:center">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="row">رقم الفاتورة</th>
                                                                            <td>{{ $invoices->invoice_number }}</td>
                                                                            <th scope="row">تاريخ الاصدار</th>
                                                                            <td>{{ $invoices->invoice_Date }}</td>
                                                                            <th scope="row">تاريخ الاستحقاق</th>
                                                                            <td>{{ $invoices->Due_date }}</td>
                                                                            <th scope="row">القسم</th>
                                                                            <td>{{ $invoices->Section->section_name }}</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <th scope="row">المنتج</th>
                                                                            <td>{{ $invoices->product }}</td>
                                                                            <th scope="row">مبلغ التحصيل</th>
                                                                            <td>{{ $invoices->Amount_collection }}</td>
                                                                            <th scope="row">مبلغ العمولة</th>
                                                                            <td>{{ $invoices->Amount_Commission }}</td>
                                                                            <th scope="row">الخصم</th>
                                                                            <td>{{ $invoices->Discount }}</td>
                                                                        </tr>


                                                                        <tr>
                                                                            <th scope="row">نسبة الضريبة</th>
                                                                            <td>{{ $invoices->Rate_VAT }}</td>
                                                                            <th scope="row">قيمة الضريبة</th>
                                                                            <td>{{ $invoices->Value_VAT }}</td>
                                                                            <th scope="row">الاجمالي مع الضريبة</th>
                                                                            <td>{{ $invoices->Total }}</td>
                                                                            <th scope="row">الحالة الحالية</th>

                                                                            @if ($invoices->Value_Status == 1)
                                                                                <td><span
                                                                                        class="badge badge-pill badge-success">{{ $invoices->Status }}</span>
                                                                                </td>
                                                                            @elseif($invoices->Value_Status ==2)
                                                                                <td><span
                                                                                        class="badge badge-pill badge-danger">{{ $invoices->Status }}</span>
                                                                                </td>
                                                                            @else
                                                                                <td><span
                                                                                        class="badge badge-pill badge-warning">{{ $invoices->Status }}</span>
                                                                                </td>
                                                                            @endif
                                                                        </tr>

                                                                        <tr>
                                                                            <th scope="row">ملاحظات</th>
                                                                            <td>{{ $invoices->note }}</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>

                                                            </div>


														</div>
														<div class="tab-pane" id="tab22">
                                                            <div class="table-responsive mt-15">

                                                                <table class="table table-striped" style="text-align:center">
                                                                    <tbody>
                                                                        @foreach ($details as $x)
                                                                        <tr>
                                                                            <th scope="row">رقم الفاتورة</th>
                                                                            <td>{{ $x->invoice_number }}</td>
                                                                            <th scope="row">المنتج</th>
                                                                            <td>{{ $x->product}}</td>
                                                                            <th scope="row">القسم</th>
                                                                            <td>{{ $invoices->Section->section_name }}</td>
                                                                        </tr>
                                                                        @endforeach
                                                                        @foreach ($details as $x)
                                                                        <tr>
                                                                        <th scope="row">اسم المستخدم</th>
                                                                            <td>{{ $x->user }}</td>

                                                                            <th scope="row">تاريخ الدفع</th>
                                                                            <td>{{ $x->Payment_Date }}</td>
                                                                            <th scope="row"> حاله الدفع</th>

                                                                            @if ($x->Value_Status == 1)
                                                                                <td><span
                                                                                        class="badge badge-pill badge-success">{{ $x->Status }}</span>
                                                                                </td>
                                                                            @elseif($x->Value_Status ==2)
                                                                                <td><span
                                                                                        class="badge badge-pill badge-danger">{{ $x->Status }}</span>
                                                                                </td>
                                                                            @else
                                                                                <td><span
                                                                                        class="badge badge-pill badge-warning">{{ $x->Status }}</span>
                                                                                </td>
                                                                            @endif

                                                                        @endforeach

                                                                        </tr>

                                                                        <tr>
                                                                            <th scope="row">ملاحظات</th>
                                                                            <td>{{ $invoices->note }}</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>

                                                            </div>




														</div>
                                                        @can('اضافة مرفق')
														<div class="tab-pane" id="tab23">

                                                            <div class="card card-statistics">

                                                                <div class="card-body">
                                                                    <p class="text-danger">* صيغة المرفق pdf, jpeg, .jpg, png </p>
                                                                    <h5 class="card-title">اضافة مرفقات</h5>
                                                                    <form method="post" action="{{ route('attachments.store') }}" enctype="multipart/form-data">
                                                                        @csrf
                                                                        <div class="custom-file">
                                                                            <input type="hidden" name="invoice_number" value="{{ $invoices->invoice_number }}">
                                                                            <input type="hidden" name="invoice_id" value="{{ $invoices->id }}">
                                                                            <div class="col-sm-12 col-md-12">
                                                                            <input type="file" name="pic" class="dropify" accept=".pdf,.jpg, .png, image/jpeg, image/png"
                                                                                    data-height="70" required />
                                                                            </div><br>

                                                                        </div><br><br>
                                                                        <button type="submit" class="btn btn-primary btn-sm" name="uploadedFile">تأكيد</button>
                                                                    </form>
                                                                </div>

                                                            </div>
                                                            @endcan


                                                                <br>


                                                            <div class="table-responsive mt-15">

                                                                <table class="table table-striped" style="text-align:center">
                                                                    <tbody>
                                                                        @foreach ($attachments as $x)
                                                                        <tr>
                                                                            <th scope="row">رقم الفاتورة</th>
                                                                            <td>{{ $x->invoice_number }}</td>
                                                                            <th scope="row">اسم المستخدم</th>
                                                                            <td>{{ $x->Created_by}}</td>
                                                                            <th scope="row">المرفق</th>
                                                                            <td>
                                                                                <img src="{{ asset('Attachments/'.$x->invoice_number.'/'.$x->file_name) }}" height="160px"  class="attachment-image">
                                                                            </td>

                                                                            <td colspan="2">
                                                                                @can('حذف المرفق')
                                                                                <a class="modal-effect btn btn-sm btn-danger" data-effect="effect-scale"
                                                                                data-id="{{$x->id}}" data-name_ar="{{$x->invoice_number}}" data-name_en="{{$x->file_name}}" data-toggle="modal"
                                                                                href="#modaldemo9" title="حذف"><i class="las la-trash"></i></a>
                                                                                @endcan

                                                                            </td>

                                                                        </tr>
                                                                        @endforeach
                                                                                                                               </td>



                                                                    </tbody>
                                                                </tbody>

                                                                </table>

                                                            </div>

														</div>

													</div>
												</div>
											</div>
										</div>
									</div>
									{{-- <ul class="nav nav-tabs html-source" id="html-source-code4" role="tablist">

									</ul> --}}

                                    <div class="modal fade" id="modaldemo9" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">حذف مرفق</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <form action="{{route('deleteattachment')}}" method="post">
                                                {{ method_field('delete') }}
                                                {{ csrf_field() }}
                                                <div class="modal-body">
                                                    <p>هل انت متاكد من عملية الحذف ؟</p><br>
                                                    <input class="form-control" name="id" id="id" type="hidden" value="{{$x->id}}">
                                                    <input class="form-control" name="number" id="number" type="hidden" value="{{$x->invoice_number}}">
                                                    <input class="form-control" name="file" id="file" type="hidden" value="{{$x->file_name}}">

                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-danger">Save</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
				</div>
				<!-- row closed -->
			</div>
			<!-- Container closed -->
		</div>
		<!-- main-content closed -->
@endsection
@section('js')
@endsection
