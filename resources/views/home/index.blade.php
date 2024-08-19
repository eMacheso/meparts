@extends('layouts.master')
@section('title','Home')
@section('content')
@section('styles')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
        crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css"
        crossorigin="anonymous" />
@endsection

<div class="container">

  <div class="row">

    <div class="col-md-4">
      <h3>Data Overview</h3>

        <div class="card">
            <div class="card-header"></div>
            <div class="card-body">
                <canvas id="bar-chart" width="800" height="805"></canvas>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card">
            <div class="card-header"></div>
            <div class="card-body">
                <canvas id="doughnut-chart" width="800" height="450"></canvas>
            </div>
        </div>
    </div>
    <div class="col-md-4">
      <p>
        <h3> Locate an Area </h3>

        <div class="mapouter"><div class="gmap_canvas">
          <iframe width="400" height="700" id="gmap_canvas" src="https://maps.google.com/maps?q=Malawi%20Parliament%20Lilongwe,%20Malawi&t=&z=7&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://putlocker-is.org"></a><br>
          <style>.mapouter{position:relative;text-align:right;height:700px;width:400px;}</style>
          <a href="https://www.embedgooglemap.net">embedgooglemap.net</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:700px;width:400px;}</style></div></div>
      </p>
    </div>

</div>

@auth
    
<div class="row">
  <div class="col-md-12">

    @if (auth()->user()->role_id !=4)
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> Quick links </h5>
        <p class="card-text">
          @if (auth()->user()->role_id == 3)
          <a href=" {{route('session.create') }} " class="btn btn-sm btn-primary">Create a new Session</a>
          <a href=" {{ url('/session/index') }} " class="btn btn-sm btn-info"> View all Sessions </a>

          @endif
          @if (auth()->user()->role_id == 1)
                <a href=" {{ route('minister_view') }} " class="btn btn-sm btn-primary">Questions </a>
          @endif

        </p>
      </div>
    </div>
    @endif

  </div>

  @if (auth()->user()->role_id == 4 )
  <div class="col-md-12">
    <div class="d-flex justify-content-between">
        <div class="col-md-4">
          <div class="card ">
              <div class="card-body">
                  <h5 class="card-title">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                    data-target="#exampleModalCenter">
                    Make a new record entry
                </button></h5>
                  {{-- <p class="card-text">Content</p> --}}
                  <div class="d-flex justify-content-end">

               </div>

               <!-- Modal -->
               <form action=" # " method="post">
                   @csrf
               <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                   aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                   <div class="modal-dialog modal-dialog-centered" role="document">
                       <div class="modal-content">
                           <div class="modal-header">
                               <h5 class="modal-title" id="exampleModalLongTitle">Complete the following fields</h5>
                               <button type="button" class="close" data-dismiss="modal"
                                   aria-label="Close">
                                   <span aria-hidden="true">&times;</span>
                               </button>
                           </div>
                           <div class="modal-body">
                                  <div class="row">
                                      <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="">Hon. MP Name</label>
                                            <input name="member_name" type="text" class="form-control" >
                                            </div>
                                      </div>
                                  </div>
                                  <div class="row">
                                    <div class="col-md-12">
                                      <div class="form-group">
                                          <label for="">Constituency</label>
                                          <select name="constituency" id="constituency_id"
                                                            class="select2 block mt-1 w-full rounded-full form-control  border-purple-300 hover:border-purple-300"
                                                            required autofocus">
                                                  @foreach ($constituencies as $constituency)
                                                        <option value=" {{$constituency->name}} " > {{ $constituency->name }} </option>
                                                  @endforeach

                                                        </select>
                                          </div>
                                    </div>
                                </div>
                                  <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            {{-- <label for="">Question</label> --}}
                                        <textarea name="question" id="question" cols="30" rows="10" class="form-control"
                                        placeholder="Enter the Hon. MP Question"
                                        ></textarea>
                                        </div>
                                    </div>
                                   </div>
                           </div>
                           <div class="modal-footer">
                               <button type="submit" class="btn btn-primary ">Submit Now</button>

                               <button type="button" class="btn btn-secondary"
                                   data-dismiss="modal">Cancel</button>
                           </div>
                       </div>
                   </div>
               </div>
           </form>
              </div>
          </div>
            </div>
            <div class="col-md-8" >
              <div class="card">
                  <div class="card-body">
                      <h5 class="card-title info">Recent Questions</h5>
                      {{-- <p class="card-text">Content</p> --}}
                      <div class="table-responsive">
                        <table class="table table-striped">
                          <thead class=" text-primary">

                            <th>
                              MP Name
                            </th>

                            <th>
                              Constituency
                            </th>
                            <th>
                              Question
                            </th>

                          </thead>
                          <tbody>

                          <tbody>


                            @foreach ($questions as $question)
                            <tr>
                              {{-- @if ($question->response == null) --}}

                              <td>
                                {{ $question->member_name }}

                                 </td>
                                 <td>
                                   {{  $question->constituency }}
                                 </td>
                                 <td>
                               {{ Str::limit($question->question, 20, '...') }}
                                 </td>
                                 <td>
                                  <a href="{{ route('minister_respond',$question->id) }}"
                                    class="btn btn-sm btn-info"> response <i class="material-icons">edit</i></a>
                                  </td>





                                  @endforeach

                                </table>
                                {{ $questions->links() }}
                              </div>
                            </div>
                          </div>

                          @endif
                          <div class="container">
                            <div class="d-flex justify-content-between">
                              <div>

  </div>
  <div>
    <div class="row">
    <div class="col-md-12">

      @if (auth()->user()->role_id !=4)
      <div class="card">
        <div class="card-body">
          <h5 class="card-title"> Quick links </h5>
          <p class="card-text">
            @if (auth()->user()->role_id == 3)
            <a href=" {{route('session.create') }} " class="btn btn-sm btn-primary">Create a new Session</a>
            <a href=" {{ url('/session/index') }} " class="btn btn-sm btn-info"> View all Sessions </a>

            @endif
            @if (auth()->user()->role_id == 1)
                  <a href=" {{ route('minister_view') }} " class="btn btn-sm btn-primary">Questions </a>
            @endif

          </p>
        </div>
      </div>
      @endif

    </div>

    @if (auth()->user()->role_id == 4 )
    <div class="col-md-12">
      <div class="d-flex justify-content-between">
          <div class="col-md-4">
            <div class="card ">
                <div class="card-body">
                    <h5 class="card-title">
                          <button type="button" class="btn btn-primary" data-toggle="modal"
                      data-target="#exampleModalCenter">
                      Make a new record entry
                  </button></h5>
                    {{-- <p class="card-text">Content</p> --}}
                    <div class="d-flex justify-content-end">

                 </div>

                 <!-- Modal -->
                 <form action=" # " method="post">
                     @csrf
                 <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                     aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                     <div class="modal-dialog modal-dialog-centered" role="document">
                         <div class="modal-content">
                             <div class="modal-header">
                                 <h5 class="modal-title" id="exampleModalLongTitle">Complete the following fields</h5>
                                 <button type="button" class="close" data-dismiss="modal"
                                     aria-label="Close">
                                     <span aria-hidden="true">&times;</span>
                                 </button>
                             </div>
                             <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                          <div class="form-group">
                                              <label for="">Hon. MP Name</label>
                                              <input name="member_name" type="text" class="form-control" >
                                              </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                      <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="">Constituency</label>
                                            <select name="constituency" id="constituency_id"
                                                              class="select2 block mt-1 w-full rounded-full form-control  border-purple-300 hover:border-purple-300"
                                                              required autofocus">
                                                    @foreach ($constituencies as $constituency)
                                                          <option value=" {{$constituency->name}} " > {{ $constituency->name }} </option>
                                                    @endforeach

                                                          </select>
                                            </div>
                                      </div>
                                  </div>
                                    <div class="row">
                                      <div class="col-md-12">
                                          <div class="form-group">
                                              {{-- <label for="">Question</label> --}}
                                          <textarea name="question" id="question" cols="30" rows="10" class="form-control"
                                          placeholder="Enter the Hon. MP Question"
                                          ></textarea>
                                          </div>
                                      </div>
                                     </div>
                             </div>
                             <div class="modal-footer">
                                 <button type="submit" class="btn btn-primary ">Submit Now</button>

                                 <button type="button" class="btn btn-secondary"
                                     data-dismiss="modal">Cancel</button>
                             </div>
                         </div>
                     </div>
                 </div>
             </form>
                </div>
            </div>
              </div>
              <div class="col-md-8" >
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title info">Recent Questions</h5>
                        {{-- <p class="card-text">Content</p> --}}
                        <div class="table-responsive">
                          <table class="table table-striped">
                            <thead class=" text-primary">

                              <th>
                                MP Name
                              </th>

                              <th>
                                Constituency
                              </th>
                              <th>
                                Question
                              </th>

                            </thead>
                            <tbody>

                            <tbody>


                              @foreach ($questions as $question)
                              <tr>
                                {{-- @if ($question->response == null) --}}

                                <td>
                                  {{ $question->member_name }}

                                   </td>
                                   <td>
                                     {{  $question->constituency }}
                                   </td>
                                   <td>
                                 {{ Str::limit($question->question, 20, '...') }}
                                   </td>
                                   <td>
                                    <a href="{{ route('minister_respond',$question->id) }}"
                                      class="btn btn-sm btn-info"> response <i class="material-icons">edit</i></a>
                                    </td>





                                    @endforeach

                                  </table>
                                  {{ $questions->links() }}
                                </div>
                              </div>
                            </div>

                            @endif
                            <div class="container">
                              <div class="d-flex justify-content-between">
                                <div>

    </div>
    <div>
@endauth



    </div>
  </div>
</div>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
crossorigin="anonymous"></script>
@if (Session::has('success'))
<script>
  toastr.success("{!! Session::get('success') !!}");

</script>
@endif

@endsection

@section('js')
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    new Chart(document.getElementById("doughnut-chart"), {
        type: 'doughnut',
        data: {
            labels: ["Submitted", "Editing","Reviewing","Rejected", "Accepted"],
            datasets: [{
                label: "Manuscripts",
                backgroundColor: ["#18ce0f", "#214369","yellow", "red","blue"],

                ]
            }]
        },
        options: {
            title: {
                display: true,
                text: "All Manuscripts"
            }
        }
    });

</script>
<script>
    new Chart(document.getElementById("bar-chart"), {
        type: 'bar',
        data: {
            labels: ["Male", "Female","Other"],
            datasets: [{
                label: "Gender",
                backgroundColor: ["#3e95cd", "#c45850",],
            }]
        },
        options: {
            title: {
                display: false,
                text: "User by Gender"
            }
        }
    });

</script>
<script>
    new Chart(document.getElementById("pie-chart"), {
type: 'pie',
data: {
labels: ["Recent Questions", "Commitments", "Current OP", "", "Reviewer"],
datasets: [{
label: "Roles",
backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
}]
},
options: {
responsive: true,
legend: {
    position: 'top',
},
title: {
    display: true,
    text: "Chart.js Doughnut Chart"
},
animation: {
    animateScale: true,
    animateRotate: true
}
}
});
</script>
@endsection
