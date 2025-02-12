<div class="app-sidebar__overlay" data-toggle="sidebar" style="background-color: rgb(14, 68, 84);box-shadow: none; ">
</div>
<aside class="app-sidebar sidebar-scroll" style="background-color: rgb(14, 68, 84);box-shadow: none;color: white ">

    <div class="main-sidemenu" style="color: white ">
        <div class="app-sidebar__user clearfix">
            <div class="dropdown user-pro-body">
                <div class="">
                    <img alt="user-img" class="avatar avatar-xl brround"
                        src="{{URL::asset('Attachments/th.jpg')}}"><span
                        class="avatar-status profile-status bg-green"></span>
                </div>
                <div class="user-info">
                    <h4 class="font-weight-semibold mt-3 mb-0">{{auth()->user()->name}}</h4>
                    <span class="mb-0 text-muted">{{auth()->user()->email}}</span>
                </div>
            </div>
        </div>
        <ul class="side-menu" style="color: white ">
            <li class="side-item side-item-category" style="color: white ">{{ trans('main_trans.Quick Margins') }}</li>
            <li class="slide">
                <a class="side-menu__item" href="{{ url('/' . $page = 'dashboard') }}"><svg
                        xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" viewBox="0 0 24 24">
                        <path d="M0 0h24v24H0V0z" fill="none" />
                        <path d="M5 5h4v6H5zm10 8h4v6h-4zM5 17h4v2H5zM15 5h4v2h-4z" opacity=".3" />
                        <path
                            d="M3 13h8V3H3v10zm2-8h4v6H5V5zm8 16h8V11h-8v10zm2-8h4v6h-4v-6zM13 3v6h8V3h-8zm6 4h-4V5h4v2zM3 21h8v-6H3v6zm2-4h4v2H5v-2z" />
                    </svg><span class="side-menu__label"
                        style="color: white ">{{ trans('main_trans.Main Page') }}</span></a>
            </li>
            @can('الفواتير')


                <li class="side-item side-item-category" style="color: white ">{{ trans('main_trans.Invoices') }}</li>
                <li class="slide">
                    <a class="side-menu__item" style="color: white " data-toggle="slide"
                        href="{{ url('/' . $page = '#') }}"><svg xmlns="http://www.w3.org/2000/svg" class="side-menu__icon"
                            viewBox="0 0 24 24">
                            <path d="M0 0h24v24H0V0z" fill="none" />
                            <path d="M19 5H5v14h14V5zM9 17H7v-7h2v7zm4 0h-2V7h2v10zm4 0h-2v-4h2v4z" opacity=".3" />
                            <path
                                d="M3 5v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2zm2 0h14v14H5V5zm2 5h2v7H7zm4-3h2v10h-2zm4 6h2v4h-2z" />
                        </svg><span class="side-menu__label"
                            style="color: white ">{{ trans('main_trans.Invoices') }}</span><i
                            class="angle fe fe-chevron-down"></i></a>
                    <ul class="slide-menu" style="color: white ">
                        @can('قائمة الفواتير')
                            <li style="color: white "><a class="slide-item"
                                    href="{{route('allinvoices')}}">{{ trans('main_trans.All invoices') }}</a></li>
                        @endcan
                        @can('الفواتير المدفوعة')
                            <li><a class="slide-item"
                                    href="{{route('paidinvoice')}}">{{ trans('main_trans.Paid invoices') }}</a>
                        @endcan
                        </li>
                        @can('الفواتير الغير مدفوعة')
                            <li><a class="slide-item"
                                    href="{{route('unpaidinvoice')}}">{{ trans('main_trans.Unpaid invoices') }}</a>
                        @endcan
                        </li>
                        @can('الفواتير المدفوعة جزئيا')
                            <li><a class="slide-item"
                                    href="{{route('particiallypaidinvoice')}}">{{ trans('main_trans.Partiallypaid invoices') }}</a>
                        @endcan
                        </li>


                        @can('ارشيف الفواتير')
                            <li><a class="slide-item"
                                    href="{{route('archieveinvoice')}}">{{ trans('main_trans.Archieved invoices') }}</a></li>
                        @endcan
                        {{-- <li><a class="slide-item" href="{{ url('/' . $page='chart-sparkline') }}">Sparkline</a></li>
                        <li><a class="slide-item" href="{{ url('/' . $page='chart-peity') }}">Chart-peity</a></li> --}}
                    </ul>
                </li>
            @endcan

            <li class="side-item side-item-category" style="color: white ">{{ trans('main_trans.Suppliers') }}</li>
            <li class="slide">
                <a class="side-menu__item" style="color: white " data-toggle="slide"
                    href="{{ url('/' . $page = '#') }}"><svg xmlns="http://www.w3.org/2000/svg" class="side-menu__icon"
                        viewBox="0 0 24 24">
                        <path d="M0 0h24v24H0V0z" fill="none" />
                        <path d="M19 5H5v14h14V5zM9 17H7v-7h2v7zm4 0h-2V7h2v10zm4 0h-2v-4h2v4z" opacity=".3" />
                        <path
                            d="M3 5v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2zm2 0h14v14H5V5zm2 5h2v7H7zm4-3h2v10h-2zm4 6h2v4h-2z" />
                    </svg><span class="side-menu__label"
                        style="color: white ">{{ trans('main_trans.Suppliers') }}</span><i
                        class="angle fe fe-chevron-down"></i></a>
                <ul class="slide-menu" style="color: white ">
                        <li style="color: white "><a class="slide-item"
                                href="{{route('suppliers.index')}}">{{ trans('main_trans.List of Suppliers') }}</a></li>

                </ul>
            </li>

            @can('التقارير')
                <li class="side-item side-item-category" style="color: white ">{{ trans('main_trans.Reports') }}</li>
                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . $page = '#') }}"><svg
                            xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" viewBox="0 0 24 24">
                            <path d="M0 0h24v24H0V0z" fill="none" />
                            <path d="M4 12c0 4.08 3.06 7.44 7 7.93V4.07C7.05 4.56 4 7.92 4 12z" opacity=".3" />
                            <path
                                d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-1 17.93c-3.94-.49-7-3.85-7-7.93s3.05-7.44 7-7.93v15.86zm2-15.86c1.03.13 2 .45 2.87.93H13v-.93zM13 7h5.24c.25.31.48.65.68 1H13V7zm0 3h6.74c.08.33.15.66.19 1H13v-1zm0 9.93V19h2.87c-.87.48-1.84.8-2.87.93zM18.24 17H13v-1h5.92c-.2.35-.43.69-.68 1zm1.5-3H13v-1h6.93c-.04.34-.11.67-.19 1z" />
                        </svg><span class="side-menu__label"
                            style="color: white ">{{ trans('main_trans.Reports') }}</span><i
                            class="angle fe fe-chevron-down"></i></a>
                    <ul class="slide-menu">
                        @can('تقرير الفواتير')
                            <li><a class="slide-item"
                                    href="{{ route('invoices_report') }}">{{ trans('main_trans.Invoices Reports') }}</a>
                        @endcan
                        </li>
                        @can('تقرير العملاء')
                            <li><a class="slide-item"
                                    href="{{ route('customers_report')}}">{{ trans('main_trans.Customers Reports') }}</a>
                        @endcan
                        </li>
                        @can('تقرير العملاء')
                            <li><a class="slide-item"
                                    href="{{Route('sendmessage')}}">{{ trans('main_trans.Contact Whatsapp') }}</a>
                        @endcan
                        </li>

                    </ul>
                </li>

                </li>
            @endcan


            @can('المستخدمين')
                <li class="side-item side-item-category" style="color: white ">{{ trans('main_trans.Users') }}</li>
                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . $page = '#') }}"><svg
                            xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" viewBox="0 0 24 24">
                            <path d="M0 0h24v24H0V0z" fill="none" />
                            <path d="M15 11V4H4v8.17l.59-.58.58-.59H6z" opacity=".3" />
                            <path
                                d="M21 6h-2v9H6v2c0 .55.45 1 1 1h11l4 4V7c0-.55-.45-1-1-1zm-5 7c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1H3c-.55 0-1 .45-1 1v14l4-4h10zM4.59 11.59l-.59.58V4h11v7H5.17l-.58.59z" />
                        </svg><span class="side-menu__label" style="color: white "> {{ trans('main_trans.Users') }}</span><i
                            class="angle fe fe-chevron-down"></i></a>
                    <ul class="slide-menu">
                        @can('قائمة المستخدمين')
                            <li><a class="slide-item" href="{{ route('users') }}">{{ trans('main_trans.All users') }}</a>
                        @endcan
                        </li>
                        @can('صلاحيات المستخدمين')
                            <li><a class="slide-item"
                                    href="{{ route('roles') }}">{{ trans('main_trans.Users permissions') }}</a>
                        @endcan</li>

                    </ul>
                </li>
            @endcan
            @can('الاعدادات')
                <li class="side-item side-item-category" style="color: white ">{{ trans('main_trans.Settings') }}</li>

                <li class="slide">
                    <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . $page = '#') }}"><svg
                            xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" viewBox="0 0 24 24">
                            <path d="M0 0h24v24H0V0z" fill="none" />
                            <path
                                d="M10.9 19.91c.36.05.72.09 1.1.09 2.18 0 4.16-.88 5.61-2.3L14.89 13l-3.99 6.91zm-1.04-.21l2.71-4.7H4.59c.93 2.28 2.87 4.03 5.27 4.7zM8.54 12L5.7 7.09C4.64 8.45 4 10.15 4 12c0 .69.1 1.36.26 2h5.43l-1.15-2zm9.76 4.91C19.36 15.55 20 13.85 20 12c0-.69-.1-1.36-.26-2h-5.43l3.99 6.91zM13.73 9h5.68c-.93-2.28-2.88-4.04-5.28-4.7L11.42 9h2.31zm-3.46 0l2.83-4.92C12.74 4.03 12.37 4 12 4c-2.18 0-4.16.88-5.6 2.3L9.12 11l1.15-2z"
                                opacity=".3" />
                            <path
                                d="M12 22c5.52 0 10-4.48 10-10 0-4.75-3.31-8.72-7.75-9.74l-.08-.04-.01.02C13.46 2.09 12.74 2 12 2 6.48 2 2 6.48 2 12s4.48 10 10 10zm0-2c-.38 0-.74-.04-1.1-.09L14.89 13l2.72 4.7C16.16 19.12 14.18 20 12 20zm8-8c0 1.85-.64 3.55-1.7 4.91l-4-6.91h5.43c.17.64.27 1.31.27 2zm-.59-3h-7.99l2.71-4.7c2.4.66 4.35 2.42 5.28 4.7zM12 4c.37 0 .74.03 1.1.08L10.27 9l-1.15 2L6.4 6.3C7.84 4.88 9.82 4 12 4zm-8 8c0-1.85.64-3.55 1.7-4.91L8.54 12l1.15 2H4.26C4.1 13.36 4 12.69 4 12zm6.27 3h2.3l-2.71 4.7c-2.4-.67-4.35-2.42-5.28-4.7h5.69z" />
                        </svg><span class="side-menu__label"
                            style="color: white ">{{ trans('main_trans.Settings') }}</span><i
                            class="angle fe fe-chevron-down"></i></a>
                    <ul class="slide-menu">
                        @can('الاقسام')
                            <li><a class="slide-item" href="{{ route('sections') }}">{{ trans('main_trans.Sections') }}</a>
                        @endcan

                        </li>
                        @can('المنتجات')
                            <li><a class="slide-item" href="{{ route('products') }}">{{ trans('main_trans.Products') }}</a>
                        @endcan
                        </li>
                    </ul>
                </li>
            @endcan

        </ul>
    </div>
</aside>
<!-- main-sidebar -->
