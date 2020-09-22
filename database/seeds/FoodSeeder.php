<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FoodSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('foods')->insert([
            'item_name' => 'Porota',
            'meal_type_id' => '1',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Omlate',
            'meal_type_id' => '1',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Khicuri',
            'meal_type_id' => '1',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Vagetable',
            'meal_type_id' => '1',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Tea',
            'meal_type_id' => '1',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Rice',
            'meal_type_id' => '2',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Chicken',
            'meal_type_id' => '2',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Beef',
            'meal_type_id' => '2',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Vagetable curry',
            'meal_type_id' => '2',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Daal',
            'meal_type_id' => '2',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Rice',
            'meal_type_id' => '3',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Rice',
            'meal_type_id' => '3',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Daal',
            'meal_type_id' => '3',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Vagetable',
            'meal_type_id' => '3',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Fish Curry',
            'meal_type_id' => '3',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('foods')->insert([
            'item_name' => 'Vegetable Fry',
            'meal_type_id' => '3',
            'created_at' => date('Y-m-d H:m:s')
        ]);
    }
}
