@extends('layouts.master')
@section('css')
<link href="{{URL::asset('assets/plugins/datatable/css/dataTables.bootstrap4.min.css')}}" rel="stylesheet" />
<link href="{{URL::asset('assets/plugins/datatable/css/buttons.bootstrap4.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('assets/plugins/datatable/css/responsive.bootstrap4.min.css')}}" rel="stylesheet" />
<link href="{{URL::asset('assets/plugins/datatable/css/jquery.dataTables.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('assets/plugins/datatable/css/responsive.dataTables.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('assets/plugins/select2/css/select2.min.css')}}" rel="stylesheet">
@endsection
@section('page-header')
				<!-- breadcrumb -->
				<div class="breadcrumb-header justify-content-between">
					<div class="my-auto">
						<div class="d-flex">
							<h4 class="content-title mb-0 my-auto">{{trans('main_trans.settings')}}</h4><span class="text-muted mt-1 tx-13 mr-2 mb-0">/ {{trans('main_trans.products')}}</span>
						</div>
					</div>
					<div class="d-flex my-xl-auto right-content">

							</div>
						</div>

				<!-- breadcrumb -->
@endsection
@section('content')
<div class="row">
    @if (session()->has('Add'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>{{ session()->get('Add') }}</strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif

@if (session()->has('error'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>{{ session()->get('error') }}</strong>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif
<!-- /resources/views/post/create.blade.php -->



@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<!-- Create Post Form -->


    <!--/div-->

    <!--div-->

    <!--/div-->

    <!--div-->
    <div class="col-xl-12">
        <div class="card mg-b-20">
            <div class="card-header pb-0">
                @can('اضافة منتج')
                <div class="d-flex justify-content-between">
                    <a class="modal-effect btn btn-outline-primary btn-block" data-effect="effect-scale" data-toggle="modal" href="#modaldemo8">{{trans('main_trans.addproduct')}}</a>

                </div>
                @endcan

            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="example" class="table key-buttons text-md-nowrap">
                        <thead>
                            <tr>
                                <th class="border-bottom-0">#</th>
                                <th class="border-bottom-0">{{trans('main_trans.productname')}}</th>
                                <th class="border-bottom-0">{{trans('main_trans.description')}}</th>
                                <th class="border-bottom-0">{{trans('main_trans.sectionname')}}</th>
                                <th class="border-bottom-0">{{trans('main_trans.Actions')}}</th>


                            </tr>
                        </thead>
                        <tbody>
                            @foreach($products as $x)
                            <tr>
                                <td>{{$x->id}}</td>
                                <td>{{$x->product_name}}</td>
                                <td>{{$x->description}}</td>
                                <td>{{$x->section->section_name}}</td>
                                <td>
                                    @can('تعديل منتج')
                                    <a class="modal-effect btn btn-sm btn-info" data-effect="effect-scale"
                                       data-id="{{$x->id}}" data-product_name="{{$x->product_name}}"
                                       data-description="{{$x->description}}" data-toggle="modal" href="#exampleModal2"
                                       title="تعديل"><i class="las la-pen"></i></a>
                                    @endcan
                                    @can( 'حذف منتج')
                                    <a class="modal-effect btn btn-sm btn-danger" data-effect="effect-scale"
                                       data-id="{{$x->id}}" data-product_name="{{$x->product_name}}" data-toggle="modal"
                                       href="#modaldemo9" title="حذف"><i class="las la-trash"></i></a>
                                    @endcan

                            </td>

                            </tr>
                            @endforeach







                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!--/div-->

    <!--div-->

</div>
 <div class="modal" id="modaldemo8">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-content-demo">
                <div class="modal-header">
                    <h6 class="modal-title">Add Product </h6><button aria-label="Close" class="close" data-dismiss="modal"
                        type="button"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <form action="{{route('products.store')}}" method="post">
                        {{ csrf_field() }}

                        <div class="form-group">
                            <label for="exampleInputEmail1">{{trans('main_trans.productname')}}</label>
                            <input type="text" class="form-control" id="product_name" name="product_name">
                        </div>

                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">{{trans('main_trans.description')}}</label>
                            <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                        </div>
                        <div class="form-group mb-20">
                            <select name="section_id" class="form-select">

                            <option value="how can we help" selected>{{trans('main_trans.sectionname')}}</option>
                            @foreach($sections as $section)
                            <option value="{{$section->id}}" name="section_id" id="section_id"> {{$section->section_name}}</option>
                            @endforeach
                             </select>
                            </div>

                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success">Save </button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- End Basic modal -->

				</div>
                <!-- edit -->
                <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Edit Product</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <form action="{{route('products.update')}}" method="post" autocomplete="off">
                                    {{-- {{method_field('post')}} --}}
                                    {{csrf_field()}}
                                    <div class="form-group">
                                        <input type="hidden" name="id" id="id" value="">
                                        <label for="recipient-name" class="col-form-label">{{trans('main_trans.productname')}}:</label>
                                        <input class="form-control" name="product_name" id="product_name" type="text">
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="col-form-label">{{trans('main_trans.description')}}:</label>
                                        <textarea class="form-control" id="description" name="description"></textarea>
                                    </div>
                                    <div class="form-group mb-20">
                                        <select name="section_id" class="form-select">
                                        @foreach($sections as $section)
                                        <option value="{{$section->id}}" name="section_id" id="section_id"> {{$section->section_name}}</option>
                                        @endforeach
                                         </select>
                                        </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">{{trans('main_trans.save')}}</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">{{trans('main_trans.close')}}</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>

                    <!-- delete -->
                    <div class="modal fade" id="modaldemo9" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Delete Product </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="{{route('products.destroy')}}" method="post">
                        {{ method_field('delete') }}
                        {{ csrf_field() }}
                        <div class="modal-body">
                            <p>هل انت متاكد من عملية الحذف ؟</p><br>
                            <input type="hidden" name="id" id="id" value="">
                            <input class="form-control" name="product_name" id="product_name" type="text" readonly>
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
<script src="{{URL::asset('assets/plugins/datatable/js/jquery.dataTables.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/dataTables.dataTables.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/dataTables.responsive.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/responsive.dataTables.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/jquery.dataTables.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/dataTables.buttons.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/buttons.bootstrap4.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/jszip.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/pdfmake.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/vfs_fonts.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/buttons.html5.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/buttons.print.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/buttons.colVis.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/dataTables.responsive.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatable/js/responsive.bootstrap4.min.js')}}"></script>
{{-- <!--Internal  Datatable js -->
<script src="{{URL::asset('assets/js/table-data.js')}}"></script> --}}
<script>
    $('#exampleModal2').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget)
        var id = button.data('id')
        var product_name = button.data('product_name')
        var description = button.data('description')
        var modal = $(this)
        modal.find('.modal-body #id').val(id);
        modal.find('.modal-body #product_name').val(product_name);
        modal.find('.modal-body #description').val(description);
    })
</script>
<script>
    $('#modaldemo9').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget)
        var id = button.data('id')
        var product_name = button.data('product_name')
        var modal = $(this)
        modal.find('.modal-body #id').val(id);
        modal.find('.modal-body #product_name').val(product_name);
    })
</script>
@endsection
