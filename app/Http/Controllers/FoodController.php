<?php

namespace App\Http\Controllers;

use App\FoodRoaster;
use Illuminate\Http\Request;
use App\Foods;
use App\MealType;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Symfony\Component\HttpFoundation\Session\Session as SessionSession;

class FoodController extends Controller
{
    public function index()
    {
        $foods = Foods::paginate(10);
        return view('pages.foods', compact('foods'));
    }

    public function menu()
    {
        return view('pages.foodMenu');
    }

    protected function dateRange($first, $last, $step = '+1 day', $format = 'Y-m-d')
    {

        $dates = array();
        $current = strtotime($first);
        $last = strtotime($last);

        while (
            $current <= $last
        ) {

            $dates[] = date($format, $current);
            $current = strtotime($step, $current);
        }

        return $dates;
    }

    public function menuCreate(Request $request)
    {
        $dates = $this->dateRange($request->start, $request->end);
        $foods = DB::table('foods')->join('meal_types', 'meal_types.id', '=', 'foods.meal_types_id')->select('foods.*', 'meal_types.type')->get();

        $breakfast = [];
        $lunch = [];
        $dinner = [];

        foreach ($foods as $food) {
            if ($food->type == 'breakfast') {
                array_push($breakfast, $food);
            } elseif ($food->type == 'lunch') {
                array_push($lunch, $food);
            } elseif ($food->type == 'dinner') {
                array_push($dinner, $food);
            }
        }

        $data = [
            'breakfast' => $breakfast,
            'lunch' => $lunch,
            'dinner' => $dinner
        ];

        Session::put(['dates' => $dates, 'foods' => $data]);
        return redirect()->back();
    }


    public function foodMenuItem(Request $request)
    {
        foreach ($request->all() as $key => $value) {
            if ($key != '_token') {
                $foodItems = [];
                foreach ($value as $id) {
                    $foodDetails = DB::table('foods')->where('id', $id)->get();
                    array_push($foodItems, $foodDetails);
                    // echo "<pre>";
                    // print_r($foodDetails);
                }

                $data = [
                    'date' => $key,
                    'foods' => serialize($foodItems)
                ];
                FoodRoaster::create($data);
            }
        }

        Session::forget('dates', 'foods');
        return redirect()->back();
    }


    public function foodList()
    {
        return view('pages.foodsList');
    }

    public function search(Request $request)
    {
        $date = $request->search;
        $datas = DB::select("SELECT student_food_menus.food_id, foods.item_name, meal_types.type, COUNT(*) as count_food FROM student_food_menus INNER JOIN foods ON foods.id = student_food_menus.food_id INNER JOIN meal_types ON meal_types.id = foods.meal_types_id WHERE student_food_menus.date = '" . $date . "' GROUP BY student_food_menus.food_id, foods.item_name, meal_types.type");
        $meal_types = MealType::all();

        Session::put(['datas' => $datas, 'meal_types' => $meal_types]);
        return redirect()->back();
    }

    public function searchClear()
    {
        if (Session::has('datas') && Session::has('meal_types')) {
            Session::forget('datas');
            Session::forget('meal_types');
        }

        return redirect()->back();
    }
}
