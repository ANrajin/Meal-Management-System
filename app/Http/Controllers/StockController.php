<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Item;
use App\Dispatch;
use App\DispatchDetails;
use Illuminate\Support\Facades\DB;

class StockController extends Controller
{
    public function index()
    {
        $items = Item::paginate(10);
        return view('pages.inventory', compact('items'));
    }

    public function stockOut()
    {
        return view('pages.dispatch');
    }

    public function items()
    {
        $items = Item::all();
        return response()->json($items);
    }

    public function getPrice($id)
    {
        $item = Item::findorFail($id);
        return response()->json($item);
    }

    public function dispatchItems(Request $request)
    {
        $data = [
            'date' => $request->date,
            'out_by' => $request->take_by,
            'budget' => $request->budget,
        ];

        $dispatch = Dispatch::create($data);

        if ($dispatch->id) {
            $items = $request->items;
            $qty = $request->qty;
            $price = $request->price;

            for ($i = 0; $i < sizeof($items); $i++) {
                $dataItem = [
                    'dispatchs_id' => $dispatch->id,
                    'items_id' => $items[$i],
                    'qty' => $qty[$i],
                    'price' => $price[$i]
                ];

                DispatchDetails::create($dataItem);
            }
        }

        return redirect()->back();
    }


    public function dispatchItemsList()
    {
        $lists = Dispatch::paginate(10);
        return view('pages.dispatchList', compact('lists'));
    }

    public function showItemsList($id)
    {
        $item = DB::table('dispatch_details')->where('dispatchs_id', $id)->join('items', 'dispatch_details.items_id', '=', 'items.id')->select('dispatch_details.*', 'items.item_name')->get();
        return response()->json(['items' => $item]);
    }
}
