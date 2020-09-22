<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Meal_type_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('meal_types')->insert([
            'type' => 'breakfast',
            'note' => 'Lorem Ipsum',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('meal_types')->insert([
            'type' => 'lunch',
            'note' => 'Lorem Ipsum',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('meal_types')->insert([
            'type' => 'dinner',
            'note' => 'Lorem Ipsum',
            'created_at' => date('Y-m-d H:m:s')
        ]);
    }
}
