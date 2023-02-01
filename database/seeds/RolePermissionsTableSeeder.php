<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RolePermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roleUser = Role::create(['name' => 'User']);

        /**
         * Basic User Permissions
         */
        $basicUserPermissions = [

            // portfolio category
            'porftfolio_category.create',
            'porftfolio_category.edit',
            'porftfolio_category.delete',

            // portfolio
            'porftfolio.create',
            'porftfolio.edit',
            'porftfolio.delete',
        ];

        for ($i = 0; $i < count($basicUserPermissions); $i++) {
            $permission = Permission::create(['name' => $basicUserPermissions[$i]]);
            $roleUser->givePermissionTo($permission);
            $permission->assignRole($roleUser);
        }
    }
}
