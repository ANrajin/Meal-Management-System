@extends('layouts.app')

@section('content')
    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{URL::to('/')}}">Starlight</a>
        <span class="breadcrumb-item active">Items</span>
      </nav>

      <div class="sl-pagebody">
        <div class="card pd-20 pd-sm-40">
          <h6 class="card-body-title">Basic Responsive DataTable</h6>
          <div class="table-wrapper">
            <table id="datatable1" class="table display responsive nowrap">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Items Name</th>
                  <th>Quantity</th>
                  <th>Per Price</th>
                  <th>Total Price</th>
                </tr>
              </thead>
              <tbody>
                  @isset($items)
                      @foreach($items as $key => $item)
                        <tr>
                            <td>{{ ($key+1) + ($items->currentPage() - 1)*$items->perPage() }}</td>
                            <td>{{$item->item_name}}</td>
                            <td>{{$item->qty}}</td>
                            <td>{{$item->price_per}}</td>
                            <td>{{$item->price_total}}</td>
                        </tr>
                      @endforeach
                  @endisset
              </tbody>
            </table>
            {{ $items->links() }}
          </div><!-- table-wrapper -->
        </div><!-- card -->
      </div>
    </div>
@endsection