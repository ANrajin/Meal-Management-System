@extends('layouts.app')

@section('content')
    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{URL::to('/')}}">Starlight</a>
        <span class="breadcrumb-item active">Food Menu</span>
      </nav>

      <div class="sl-pagebody">
        <div class="col-sm-4 mx-auto">
          <form action="{{route('menu.create')}}" method="post">
            @csrf
            <div class="form-group">
              <input type="date" name="start" class="form-control">
            </div>
            <div class="form-group">
              <input type="date" name="end" class="form-control">
            </div>
            <div class="d-flex justify-content-center">
              <button type="submit" class="btn btn-primary">update</button>
            </div>
          </form>
        </div>
        <br>

        <h2>Select Date and click update</h2>
        <br>
          <table class="table table-responsive">
            <thead>
              <tr>
                @if(Session::get('dates'))
                  <td></td>
                  @foreach (Session::get('dates') as $date)
                    <td>{{$date}}</td>
                  @endforeach
                @endif
              </tr>
            </thead>
            <tbody>
              <form action="{{route('menu.items')}}" method="post" id="item_form">
                @csrf
                @if(Session::get('foods') && Session::get('dates'))
                  @foreach (Session::get('foods') as $key => $food)
                    <tr>
                      <td>{{$key}}</td>
                        @php
                            $dates = Session::get('dates');
                        @endphp
                        @for ($i = 0; $i < count(Session::get('dates')); $i++)
                        <td>
                          @foreach ($food as $foodItem)
                            <input type="checkbox" name="{{$dates[$i]}}[]" value="{{$foodItem->id}}">&nbsp;{{$foodItem->item_name}}<br/>
                          @endforeach
                        </td>
                        @endfor
                    </tr>
                  @endforeach
                @endif
              </form>
            </tbody>
          </table>
          <hr>
          <div class="d-flex justify-content-center">
              <button type="submit" class="btn btn-primary" onclick="event.preventDefault(); document.getElementById('item_form').submit();">Create</button>
          </div>
      </div>
    </div>
@endsection
