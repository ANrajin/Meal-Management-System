<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ItemsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('items')->insert([
            'item_name' => 'onion',
            'qty' => '50',
            'price_per' => '30',
            'price_total' => '1500',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'ginger',
            'qty' => '50',
            'price_per' => '50',
            'price_total' => '2500',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'rosun',
            'qty' => '50',
            'price_per' => '60',
            'price_total' => '3000',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'Rice',
            'qty' => '100',
            'price_per' => '30',
            'price_total' => '3000',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'Lental',
            'qty' => '60',
            'price_per' => '80',
            'price_total' => '4800',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'chili powder',
            'qty' => '40',
            'price_per' => '100',
            'price_total' => '4000',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'turmaric powder',
            'qty' => '40',
            'price_per' => '90',
            'price_total' => '3600',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'oil',
            'qty' => '100',
            'price_per' => '150',
            'price_total' => '15000',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'beef',
            'qty' => '10',
            'price_per' => '600',
            'price_total' => '6000',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'chicken meat',
            'qty' => '40',
            'price_per' => '150',
            'price_total' => '6000',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'potato',
            'qty' => '40',
            'price_per' => '20',
            'price_total' => '800',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'Mixed Masala',
            'qty' => '10',
            'price_per' => '50',
            'price_total' => '500',
            'created_at' => date('Y-m-d H:m:s')
        ]);
        DB::table('items')->insert([
            'item_name' => 'jira gura',
            'qty' => '20',
            'price_per' => '60',
            'price_total' => '1200',
            'created_at' => date('Y-m-d H:m:s')
        ]);
    }
}
