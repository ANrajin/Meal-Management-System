@extends('layouts.app')
@section('content')
    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{URL::to('/')}}">Starlight</a>
        <span class="breadcrumb-item active">Foods</span>
      </nav>

      <div class="sl-pagebody">
        <div class="card pd-20 pd-sm-40">
          <h6 class="card-body-title">Basic Responsive DataTable</h6>
          <div class="table-wrapper">
            <table id="datatable1" class="table display responsive nowrap">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Food Name</th>
                  <th>Meal Type</th>
                </tr>
              </thead>
              <tbody>
                  @isset($foods)
                      @foreach($foods as $key => $food)
                        <tr>
                            <td>{{ ($key+1) + ($foods->currentPage() - 1)*$foods->perPage() }}</td>
                            <td>{{$food->item_name}}</td>
                            <td>{{$food->category->type}}</td>
                        </tr>
                      @endforeach
                  @endisset
              </tbody>
            </table>
            {{ $foods->links() }}
          </div><!-- table-wrapper -->
        </div><!-- card -->
      </div>
    </div>
@endsection