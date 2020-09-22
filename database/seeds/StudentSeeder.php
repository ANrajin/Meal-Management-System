<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('students')->insert([
            'user_id' => '2',
            'std_id' => '124512',
            'student_name' => 'Jhone Doe',
            'phone' => '12345698745',
            'address' => 'lorem Ipsum'
        ]);
        DB::table('students')->insert([
            'user_id' => '3',
            'std_id' => '124513',
            'student_name' => 'jane Doe',
            'phone' => '12345698745',
            'address' => 'lorem Ipsum'
        ]);
        DB::table('students')->insert([
            'user_id' => '4',
            'std_id' => '124514',
            'student_name' => 'Alex Doe',
            'phone' => '12345698745',
            'address' => 'lorem Ipsum'
        ]);
        DB::table('students')->insert([
            'user_id' => '5',
            'std_id' => '124515',
            'student_name' => 'James Aurthor',
            'phone' => '12345698745',
            'address' => 'lorem Ipsum'
        ]);
        DB::table('students')->insert([
            'user_id' => '6',
            'std_id' => '124516',
            'student_name' => 'Deborah Angle',
            'phone' => '12345698745',
            'address' => 'lorem Ipsum'
        ]);
    }
}
