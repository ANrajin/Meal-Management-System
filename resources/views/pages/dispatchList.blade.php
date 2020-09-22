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
                  <th>Date</th>
                  <th>Stock Out By</th>
                  <th>Products</th>
                  <th>Budget</th>
                </tr>
              </thead>
              <tbody>
                  @isset($lists)
                      @foreach($lists as $key => $item)
                        <tr>
                            <td>{{ ($key+1) + ($lists->currentPage() - 1)*$lists->perPage() }}</td>
                            <td>{{$item->date}}</td>
                            <td>{{$item->out_by}}</td>
                            <td><a href="javascript:void(0)" data-id="{{$item->id}}" class="list">Click Here</a> to view products list</td>
                            <td>{{$item->budget}}</td>
                        </tr>
                      @endforeach
                  @endisset
              </tbody>
            </table>
            {{ $lists->links() }}
          </div><!-- table-wrapper -->
        </div><!-- card -->
      </div>
    </div>

    @include('pages.dispatchItemList')
@endsection
@push('scripts')
    <script>
        $(document).ready(function(){
            $(".list").on("click", function(){
                var id = $(this).data("id");


                $.ajax({
                    url: "http://127.0.0.1:8000/api/items/list/" + id,
                    method: "GET",
                    dataType: "json",
                    success: function(res){
                        console.log(res.items);
                        var row = ""
                        var i = 1;
                        res.items.map(data => {
                            row += "<tr>"
                            row += "<td>"+ (i++) +"</td>"
                            row += "<td>#"+data.id+"</td>"
                            row += "<td>"+data.item_name+"</td>"
                            row += "<td>"+data.qty+"</td>"
                            row += "<td>"+data.price+"</td>"
                            row += "</tr>"
                        })

                        $("#list_table").html(row)
                        $("#list").modal("show")
                    }
                })
            })
        })
    </script>
@endpush