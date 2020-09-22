@extends('layouts.app')

@section('content')
    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{URL::to('/')}}">Starlight</a>
        <span class="breadcrumb-item active">Food List</span>
      </nav>

    <div class="sl-pagebody">
        <div class="col-sm-4 mx-auto">
          <form action="{{route('food.search')}}" method="post">
            @csrf
            <div class="form-group">
              <input type="date" name="search" class="form-control">
            </div>
            <div class="d-flex justify-content-center">
              <button type="submit" class="btn btn-primary">Serach</button>
            </div>
          </form>
        </div>
        <br>

        @if(Session::has('datas') && Session::has('meal_types'))
            <div class="card">
                <div class="card-header">Date Wise Food Items</div>
                <div class="card-body">
                    <table class="table table-responsive">
                        <tbody>
                            @foreach (Session::get('meal_types') as $item)
                                <tr>
                                    <td>{{$item->type}}</td>
                                    <td>
                                    @foreach (Session::get('datas') as $data)
                                        @if ($data->type == $item->type)
                                            <strong>{{$data->item_name}}</strong><span class="text-warning">({{$data->count_food}})</span>&comma;&nbsp;
                                        @endif
                                    @endforeach
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    <div class="d-flex justify-content-center">
                        <a href="{{route('food.searchClear')}}" class="btn btn-info">Clear</a>
                    </div>
                </div>
            </div>
        @endif
    </div>
@endsection