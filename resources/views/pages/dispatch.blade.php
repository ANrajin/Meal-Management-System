@extends('layouts.app')
@section('content')
    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{URL::to('/')}}">Starlight</a>
        <span class="breadcrumb-item active">Dispatch</span>
      </nav>

      <div class="sl-pagebody">
          <div class="card">
              <div class="card-body">
                    <form action="{{route('inventory.dispatch')}}" method="post">
                        @csrf
                        <div class="row form-group">
                            <div class="col-md-4">
                                <label for="">Date</label>
                                <input type="date" name="date" id="date" class="form-control">
                            </div>
                            <div class="col-md-4">
                                <label for="">Stock Out By</label>
                                <input type="text" name="take_by" id="take_by" class="form-control">
                            </div>
                            <div class="col-md-4">
                                <label for="">Budget</label>
                                <input type="text" name="budget" id="budget" class="form-control">
                            </div>
                        </div>

                        <hr>
                        <div class="d-flex justify-content-center">
                            <table class="table-responsive">
                                <thead>
                                    <tr>
                                        <th class="wd-40p">Items</th>
                                        <th class="wd-15p">Quantity</th>
                                        <th class="wd-15p">Price</th>
                                        <th class="wd-20p">Total</th>
                                        <th class="wd-10p">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="food_item">
                                    <tr class="rows1">
                                        <td>
                                            <select name="items[]" class="form-control sample">
                                        </td>
                                        <td>
                                            <input type="text" name="qty[]" class="form-control qty" placeholder="qty">
                                        </td>
                                        <td>
                                            <input type="text" name="price[]" class="form-control price" placeholder="price" readonly>
                                        </td>
                                        <td>
                                            <input type="text" name="total[]" class="form-control total" placeholder="total" readonly>
                                        </td>
                                        <td>
                                            <button type="button" id="add" class="btn btn-success">+</button>
                                        </td>
                                    </tr>
                                    <tfoot>
                                        <tr>
                                            <td colspan="3" style="text-align: right"><strong>Grand Total &nbsp;</strong></td>
                                            <td><input type="text" id="grandTotal" class="form-control" readonly/></td>
                                        </tr>
                                    </tfoot>
                                </tbody>
                            </table>
                        </div>
                        <hr>
                        <div class="d-flex justify-content-center">
                            <button type="submit" class="btn btn-primary" id="submit">Create</button>
                        </div>
                    </form>
              </div>
          </div>
      </div>
    </div>
@endsection
@push('scripts')
    <script>
        function append(This){
            $.ajax({
                url: "http://127.0.0.1:8000/api/items",
                method: "GET",
                dataType: "json",
                success: function(res){
                    var opt = "";
                    res.map(data => {
                        opt += "<option value='"+data.id+"'>"+data.item_name+"</option>";
                    })
                    
                    This.html(opt);
                    totalAmount();
                }
            })
        }

        function totalAmount(){
            var TotalAmount = 0;
            var budget = $("#budget").val();
            $('input[name^="price"]').each(function() {
                var This = $(this),
                    rows = This.closest('tr'),
                    total = rows.find('.total'),
                    price =  parseInt(rows.find(".price").val()) || 0,
                    qty =  parseInt(rows.find(".qty").val()) || 0;

                var t = price *  qty;
                TotalAmount += t;
                if(t > 0){
                    total.val(t) ;
                }else{
                     total.val('') ;
                }

                $("#grandTotal").val(TotalAmount);

                if(TotalAmount > budget){
                    $("#grandTotal").css('color', 'red');
                    alert("Your budget exceeded");
                    $("#submit").attr("disabled", true);
                }else{
                    $("#grandTotal").css('color', 'black');
                    $("#submit").attr("disabled", false);
                }
            });
        }

        $(document).ready(function(){
            var current = $('#food_item tr:last-child .sample');
            append(current);
            var count = 1;

            $(document.body).on("click",'#add', function(){
                count = count + 1;

                var row = "<tr class = 'rows" + count + "'>";
                row += "<td><select name='items[]' class='form-control sample w-100'></select></td>";
                row += "<td><input type='text' name='qty[]' class='form-control qty' placeholder='qty'></td>";
                row += "<td><input type='text' name='price[]' class='form-control price' placeholder='price' readonly></td>";
                row += "<td><input type='text' name='total[]' class='form-control total' placeholder='total' readonly></td>";
                row += "<td><button type='button' class='btn btn-danger rmv' data-button='row"+count+"'>-</button></td>";
                row += "</tr>";

                $('#food_item').append(row);
                var current = $('#food_item tr:last-child .sample');
                append(current);
            })

            $(document.body).on('click', '.rmv', function() {
                var This = $(this);
                var rows = This.closest('tr');
                rows.remove();
            })


            $(document.body).on("change",'.sample', function(){
                var This = $(this);
                var rows = This.closest('tr');
                var price = rows.find(".price");

                var id = This.val();

                $.ajax({
                    url: "http://127.0.0.1:8000/api/items/"+id,
                    method: "GET",
                    dataType: "json",
                    success: function(res){
                        
                        price.val(res.price_per)
                    }
                })
            })

            $(document.body).on("change",'.qty', function(){
                totalAmount();
            })
        })
    </script>
@endpush