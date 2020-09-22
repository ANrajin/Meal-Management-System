<?php

namespace App\Http\Controllers;

use App\MealType;
use App\Student;
use App\StudentFoodMenu;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Auth;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $students = Student::paginate(10);
        return view('pages.students', compact('students'));
    }


    public function home()
    {
        return view('pages.student.index');
    }


    public function foodMenu()
    {
        $foods = DB::table('food_roasters')->latest()->limit('7')->get();
        $days = MealType::all();
        return view('pages.student.foodMenu', compact('foods', 'days'));
    }


    public function foodMenuCreate(Request $request)
    {
        foreach ($request->all() as $key => $item) {
            if ($key != '_token') {
                foreach ($item as $foodId) {
                    $data = [
                        'user_id' => Auth::user()->id,
                        'student_id' => Auth::user()->student->std_id,
                        'date' => $key,
                        'food_id' => $foodId,
                    ];

                    // echo "<pre>";
                    // print_r($data);
                    StudentFoodMenu::create($data);
                }
            }
        }

        return redirect()->back();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return redirect()->back();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function show(Student $student)
    {
        return redirect()->back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function edit(Student $student)
    {
        return redirect()->back();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Student $student)
    {
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function destroy(Student $student)
    {
        return redirect()->back();
    }
}
