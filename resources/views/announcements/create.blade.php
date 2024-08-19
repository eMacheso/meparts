@extends('layouts.master')

@section('content')

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>New Announcement </h3>
                <p class="text-subtitle text-muted"> A Message to the Directors
                </p>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title"></h4>
                    </div>
                    <div class="card-body">
                        <form action=" {{ route('announcements.store') }} " method="POST" enctype="multipart/form-data" >
                            @csrf

                            <div class="form-group">
                              <label for=""> Title </label>
                              <input type="text" name="title" id="" class="form-control" placeholder="" required aria-describedby="helpId">

                            </div>


                          <div class="form-group">
                              <label for="my-input">Content</label>

                              <textarea name="announcement" id="summernote" cols="30" rows="10" rwebequired ></textarea>

                          </div>
                          <div class="form-group">
                            <label for=""> Attachment </label>
                            <input type="file" name="attachment" id="" class="form-control" accept="application/pdf"  aria-describedby="helpId">
                            <div class="text-helper">Allows only .pdf</div>
                          </div>
                          <button type="submit"  class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>

<script src="  {{asset('assets/vendors/jquery/jquery.min.js')}} "></script>
<script src=" {{asset('assets/vendors/summernote/summernote-lite.min.js')}} "></script>
<script>
    $('#summernote').summernote({
        tabsize: 2,
        height: 120,
    })
    $("#hint").summernote({
        height: 100,
        toolbar: false,
        placeholder: 'type with apple, orange, watermelon and lemon',
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
