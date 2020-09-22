@extends('layouts.app')
@push('style')
     <link href="{{asset('assets/lib/datatables/jquery.dataTables.css')}}" rel="stylesheet">
     <link href="{{asset('assets/lib/select2/css/select2.min.css')}}" rel="stylesheet">
@endpush
@section('content')
    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{URL::to('/')}}">Starlight</a>
        <span class="breadcrumb-item active">Students</span>
      </nav>

      <div class="sl-pagebody">
        <div class="card pd-20 pd-sm-40">
          <h6 class="card-body-title">Basic Responsive DataTable</h6>
          <div class="table-wrapper">
            <table id="datatable1" class="table display responsive nowrap">
              <thead>
                <tr>
                  <th class="wd-15p">#</th>
                  <th class="wd-15p">Student ID</th>
                  <th class="wd-20p">Student name</th>
                  <th class="wd-15p">Email</th>
                  <th class="wd-10p">Phone</th>
                  <th class="wd-25p">Address</th>
                </tr>
              </thead>
              <tbody>
                  @isset($students)
                      @foreach($students as $key => $student)
                        <tr>
                            <td>{{ ($key+1) + ($students->currentPage() - 1)*$students->perPage() }}</td>
                            <td>{{$student->std_id}}</td>
                            <td>{{$student->student_name}}</td>
                            <td>{{$student->user->email}}</td>
                            <td>{{$student->phone}}</td>
                            <td>{{$student->Address}}</td>
                        </tr>
                      @endforeach
                  @endisset
              </tbody>
            </table>
          </div><!-- table-wrapper -->
        </div><!-- card -->
      </div>
    </div>
@endsection
@push('script')
    <script>
      $(function(){
        'use strict';

        $('#datatable1').DataTable({
          responsive: true,
          language: {
            searchPlaceholder: 'Search...',
            sSearch: '',
            lengthMenu: '_MENU_ items/page',
          }
        });

        // Select2
        $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });

      });
    </script>
@endpush