
<form action="{{ route('adminSendCreateUnits')}}" method="post" enctype="multipart/form-data">
{{csrf_field()}}
<div  class="row col-12">
<div class="col-sm">
<div class="form-group">

<label style="width:100%; background-color:grey; color:white; padding:15px;" for="course_id">Course</label>
<select name="course_id" class="form-control">
<option>Select Course</option><!--selected by default-->
@foreach ($courses as $course)
<option value="{{$course->id}}"> 
{{ $course->id}}-{{ $course->crs_title}}
</option>
@endforeach
</select>

</div>
</div>
</div><br>

<div class="row col-12">

<table class="table table-bordered table-hover" id="tab_logic">
        <thead style="background-color:grey; color:white">
          <tr>
            <th style="width:5%;"> rows </th>
            <th class="text-center">Unit Number </th>
            <th class="text-center">Unit Title</th>
          </tr>
        </thead>
        <tbody style="background-color:#dce8dc;">
          <tr id='addr0'>
            <td  style="width:5%;">1</td>
            <td>
                <div class="col-sm">
                <div class="form-group">
                <label for="unit_number">Unit Number</label>
                <select name="unit_number[]" class="form-control">

                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>

                </select>
                </div>
                </div>
            </td>
            <td>
                <div class="col-sm">
                <div class="form-group">
                <label for="unit_title">Unit Title</label>
                <input type="text" class="form-control" name="unit_title[]" id="unit_title" placeholder="Unit Title" required>
                </div>
                </div>
            </td>
          </tr>
          <tr id='addr1'></tr>
        </tbody>
      </table>

</div>
<br><br><div class="row col-12">
    <div style="text-align: center;" class="col-md-12">
      <button id="add_row" class="btn btn-success float-left">+ Unit</button>
      <button type="submit" name="submit" class="btn btn-lg btn-success">Submit</button>
      <button id='delete_row' class="btn btn-danger float-right">x Unit</button>
    </div>
  </div>
