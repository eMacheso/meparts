<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
@extends('layouts.master')

@section('content')

<div class="container">
    <div class="row">
        <div class="col">
            <div class="d-flex justify-content-end">
                <div>
                    <a href=" {{ url()->previous() }} " class="btn btn-sm btn-dark mb-2">back</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12">
           <div class="card">
               <div class="card-body">
                   <h5 class="card-title">
                    <div class="d-flex justify-content-between">
                        <div>
                       Programme Name: {{ $ortissue->programme }}
                        </div>
                        
                    </div>


                  



                </h5>
                <hr>
                
                   <p class="card-text">

                <form action=" {{ route('issues.update',$ortissue->id) }} " method="post">
                    @csrf
                    @method('PUT')
                 

                                <!--<div class="form-group">

                                <h3>Issue Name:</h3>
  <input type="text" id="summernote1" name="issue_name1" value="{!!$ortissue->issue_name!!}"><br><br>
                    
            </div>
-->
<label for="issue_type"> Issue Type </label>
<input  type="text" class="form-control" name="issue_type" value="ort" readonly>
                    <h3>Activity:</h3>
                    <div class="form-group">
                        <textarea name="activity" id="summernote2" cols="30" rows="10" class="form-control"> {!! $ortissue->activity !!} </textarea>
                    </div> 

                    <h3>Management Direction:</h3>
                    <div class="form-group">
                        <textarea name="direction" id="summernote2" cols="30" rows="10" class="form-control">  </textarea>
                    </div> 
                    <h3>Date</h3> <input type="datetime-local" class="form-control" name="dates" >
                    <div class="form-group row">
                            <label for="status" class="col-md-4 col-form-label text-md-right"> <h3>Change Status</h3> </label>

                            <div class="col-md-6">
                                <select class=" form-control " name="status" id="status" required >
                                <option value="{!! $ortissue->status !!}">Select new status</option>
                                    <option value="Not Done">Not Done</option>
                                    <option value="Pending">Pending</option>       
                                <option value="Done">Done</option>
                                    
                                </select></br></br>
                    
                   <!-- Date Due {{ $ortissue->date_due }}<br>
                    Select New Due Date<input type="datetime-local" class="form-control" name="date_due" >
                    show only is new date is selected 
                    
                    <h3>Reason for change of due date:</h3>
                    <div class="form-group">
                        <textarea name="reason" id="summernote2" cols="30" rows="10" class="form-control">{!! $ortissue->reason !!}  </textarea>
                    </div> 
                    
                    <h3>SE's Comment:</h3>
                    <div class="form-group">
                        <textarea name="se_input" id="summernote2" cols="30" rows="10" class="form-control"> {!! $ortissue->se_input !!} </textarea>
                    </div> 
                     @if ($ortissue->se_input != null)
                    <h3>Responsible Director's Responce</h3>
                    show only is SE Comment is filled
                    <div class="form-group">
                        <textarea name="dir_responce" id="summernote2" cols="30" rows="10" class="form-control"> {!! $ortissue->dir_responce !!} </textarea>
                    </div> 
                    @else

                    <input type="hidden" id="summernote2" name="dir_responce" value="">
                    @endif -->
                   
                    
 
                    <input type="submit" value="Submit"  class=" btn btn-primary btn-sm form-control">
                </form>

                   </p>
               </div>
           </div>
        </div>
    </div>
</div>
<script src="  {{asset('assets/vendors/jquery/jquery.min.js')}} "></script>
<script src=" {{asset('assets/vendors/summernote/summernote-lite.min.js')}} "></script>
<script>
    $('#summernote').summernote({
        tabsize: 2,
        height: 120,
    })
    $('#summernote2').summernote({
        tabsize: 2,
        height: 180,
    })
    $("#hint").summernote({
        height: 100,
        toolbar: false,
        placeholder: 'issues',
        hint: {
            words: ['apple', 'orange', 'watermelon', 'lemon'],
            match: /\b(\w{1,})$/,
            search: function (keyword, callback) {
                callback($.grep(this.words, function (item) {
                    return item.indexOf(keyword) === 0;
                }));
            }
        }
    });

</script>


@endsection

