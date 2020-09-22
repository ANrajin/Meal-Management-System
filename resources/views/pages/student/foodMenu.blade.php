@extends('layouts.app')
@section('content')
    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{URL::to('/')}}">Starlight</a>
        <span class="breadcrumb-item active">Food Menu</span>
      </nav>

      <div class="sl-pagebody">
          <div class="row form-group">
            <div class="col-sm-6 mx-auto">
              <input type="text" class="form-control" readonly value="{{Auth::user()->student->std_id}}">
            </div>
          </div>
          <br>
          <hr>
          <br>
          <table class="table table-responsive">
              <thead>
                  <tr>
                      <th></th>
                      @foreach ($foods as $date)
                        <th>{{$date->date}}</th>
                      @endforeach
                  </tr>
              </thead>
              <tbody>
                <form action="{{route('student.foodMenuCreate')}}" method="post" id="mealForm">
                  @csrf
                  @foreach ($days as $day)
                      <tr>
                        <td>{{$day->type}}</td>
                        @foreach ($foods as $food)
                        <td>
                          @foreach (unserialize($food->foods) as $items)
                              @foreach ($items as $item)
                                  @if ($day->id == $item->meal_types_id)
                                      <input type="checkbox" name="{{$food->date}}[]" value="{{$item->id}}">&nbsp;{{$item->item_name}}<br/>
                                  @endif
                              @endforeach
                          @endforeach
                        </td>
                        @endforeach
                      </tr>
                  @endforeach
                </form>
              </tbody>
          </table>

          <hr>

          <div class="d-flex justify-content-center">
            <button type="submit" class="btn btn-success" onclick="event.preventDefault(); document.getElementById('mealForm').submit();">Submit</button>
          </div>
      </div>
    </div>
@endsection