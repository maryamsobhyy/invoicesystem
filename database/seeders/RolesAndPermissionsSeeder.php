<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolesAndPermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $arrayOfPermissionNames=[

        'الفواتير',
        'قائمة الفواتير',
        'الفواتير المدفوعة',
        'الفواتير المدفوعة جزئيا',
        'الفواتير الغير مدفوعة',
        'ارشيف الفواتير',
        'التقارير',
        'تقرير الفواتير',
        'تقرير العملاء',
        'المستخدمين',
        'قائمة المستخدمين',
        'صلاحيات المستخدمين',
        'الاعدادات',
        'المنتجات',
        'الاقسام',


        'اضافة فاتورة',
        'حذف الفاتورة',
        'تصدير EXCEL',
        'تغير حالة الدفع',
        'تعديل الفاتورة',
        'ارشفة الفاتورة',
        'طباعةالفاتورة',
        'اضافة مرفق',
        'حذف المرفق',

        'اضافة مستخدم',
        'تعديل مستخدم',
        'حذف مستخدم',

        'عرض صلاحية',
        'اضافة صلاحية',
        'تعديل صلاحية',
        'حذف صلاحية',

        'اضافة منتج',
        'تعديل منتج',
        'حذف منتج',

        'اضافة قسم',
        'تعديل قسم',
        'حذف قسم',
        'الاشعارات',

        ];
        $permissions=collect($arrayOfPermissionNames)->map(function($permission){
            return ['name'=>$permission,'guard_name'=>'web'];

        });
        Permission::insert($permissions->toArray());
        Role::create(['name'=>'superadmin'])
        ->givePermissionTo($arrayOfPermissionNames);
    }
}
