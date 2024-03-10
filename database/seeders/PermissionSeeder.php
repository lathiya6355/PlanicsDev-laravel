<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Spatie\Permission\PermissionRegistrar;

class PermissionSeeder extends Seeder
{
    /**
     * Create the initial roles and permissions.
     *
     * @return void
     */
    public function run()
    {
        // Reset cached roles and permissions
        app()[PermissionRegistrar::class]->forgetCachedPermissions();

        // create permissions
        Permission::create(['name' => 'edit articles']);
        Permission::create(['name' => 'delete articles']);
        Permission::create(['name' => 'show articles']);
        Permission::create(['name' => 'create articles']);
        Permission::create(['name' => 'show all articles']);

        // create roles and assign existing permissions
        $role1 = Role::create(['name' => 'Admin']);
        $role1->givePermissionTo('edit articles');
        $role1->givePermissionTo('delete articles');
        $role1->givePermissionTo('show articles');
        $role1->givePermissionTo('create articles');
        $role1->givePermissionTo('show all articles');

        $role2 = Role::create(['name' => 'HR']);
        $role2->givePermissionTo('edit articles');
        $role2->givePermissionTo('delete articles');
        $role2->givePermissionTo('show articles');
        $role2->givePermissionTo('create articles');
        $role2->givePermissionTo('show all articles');

        $role3 = Role::create(['name' => 'Employee']);
        $role3->givePermissionTo('show articles');
        // gets all permissions via Gate::before rule; see AuthServiceProvider

        // create demo users
        $user = \App\Models\User::factory()->create([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => '12345'
        ]);
        $user->assignRole($role1);

        $user = \App\Models\User::factory()->create([
            'name' => 'HR',
            'email' => 'hr@gmail.com',
            'password' => '12345'
        ]);
        $user->assignRole($role2);

        $user = \App\Models\User::factory()->create([
            'name' => 'Employee',
            'email' => 'employee@gmail.com',
            'password' => '12345'
        ]);
        $user->assignRole($role3);
    }
}
