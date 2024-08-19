@extends('layouts.master')

@section('title','Questions asked')

@section('content')

@section('styles')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
        crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css"
        crossorigin="anonymous" />
@endsection

<div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title "> Parliamentary Session Questions </h4>
            <p class="card-category"></p>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table" id="mytable">
                <thead class=" text-primary">
                  <th>
                    SN
                  </th>
                  <th> 
                    MP Name
                  </th>
                  
                  <th>
                    Constituency
                  </th>
                  <th>
                    Question
                  </th>
                 
                  <th>
                    Response 
                  </th>
                  <th>
                    
                  </th>

                </thead>
                <tbody>    
                  @foreach ($questions as $question)
                  <tr>
                    <td>
                      {{ $question->id }}
                    </td>
                    <td>
                 Hon. {{ $question->member_name }}
                    </td>
                    <td>

      
                      {{ $question->constituency }}
               </td>
                    <td>
                      {{  Str::limit($question->question , 120, '...') }} 
                    </td>
                    <td >
                      {{  Str::limit($question->response ,120,'...')}} 
                    </td>
                     
                   

                      @if ($question->response ==null )
                      <td>
                      <a href="{{ route('minister_respond',$question->id) }}" class="btn btn-sm btn-primary">respond</a>
                    </td>
                      @else

                      <td>
                        <a href="{{ route('minister_respond',$question->id) }}" class="btn btn-sm btn-info">edit</a>
                      </td>
                      @endif
                  
                  

               @endforeach
              </tr> 
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>

  @section('js')
    {{-- <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script> --}}
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.24/datatables.min.js" defer></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js" defer></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" defer></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" defer></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" defer></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js" defer></script>


    <script>
        $(document).ready(function() {
            $('#mytable').DataTable(
                {
        dom: 'Bfrtip',
        buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5'
        ]
    }
            );
        });

    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
        integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw=="
        crossorigin="anonymous"></script>
    @if (Session::has('success'))
        <script>
            toastr.success("{!! Session::get('success') !!}");

        </script>
    @endif


@endsection
  @endsection
