@extends('layouts.app')
@section('content')
    
 <!-- Begin Page Content -->
 <div class="container-fluid">

    <div class="row">
        <div class="col-sm-6">
            
            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">{{ $pageHead }}</h1>
            
        </div>
        <div class="col-sm-6 text-right">
            <a href="{{ route('questions.download.import.format') }}" class="btn btn-sm btn-primary"><i class="fa fa-download"></i> Download Import Format</a>
        </div>
    </div>


    <!-- Content Row -->
    <div class="row">

        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">


                    <form action="{{ route('questions.import') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        
                        <input type="hidden" id="isClassroom" name="is_classroom" value="{{ old('is_classroom') }}"  />

                        <input type="hidden" id="isChapter" name="is_chapter" value="{{ old('is_chapter') }}"  />

                        <div class="row">
                            <div class="col-sm-4">

                                <div class="form-group">
                                    
                                    <label for="Classroom">Classroom</label>

                                    <select name="classroom_id" id="classroom_id" class="form-control form-contol-sm select2">
                                        
                                        <option value="">select</option>
                                        @forelse ($classRooms as $classroom)
                                        
                                            <option value="{{ $classroom->id }}" {{ old('classroom_id') == $classroom->id ? 'selected' : '' }}>{{ $classroom->name }}</option>

                                        @empty
                                        
                                            <option value="">No classroom found</option>

                                        @endforelse

                                    </select>
                                    
                                    <x-input-error :messages="$errors->get('classroom_id')" class="mt-2" />
                                        
                                </div>

                            </div>

                            <div class="col-sm-4">

                                <div class="form-group">
                                    
                                    <label for="Subject">Subject</label>

                                    <select name="subject_id" id="subject_id" class="form-control form-contol-sm select2">
                                        
                                        <option value="">select</option>

                                            @forelse ($subjects as $subject)
                                                
                                                @if ($subject->classroom_id == old('classroom_id'))
                                                    
                                                    <option value="{{ $subject->id }}" {{ old('subject_id') == $subject->id ? 'selected' : '' }} data-classRoom="{{ $subject->classroom_id ?? '' }}">{{ $subject->name }}</option>
                                                    
                                                @endif

                                            @empty
                                            
                                                <option value="">No subject found</option>

                                            @endforelse
                                            
                                    </select>
                                    
                                    <x-input-error :messages="$errors->get('subject_id')" class="mt-2" />
                                        
                                </div>

                            </div>

                            <div class="col-sm-4 chapterCol" style="display: {{ old('is_chapter') != ''?'':'none' }};">

                                <div class="form-group">
                                    
                                    <label for="Chapter">Chapter</label>

                                    <select name="chapter_id" id="chapter_id" class="form-control form-contol-sm select2">
                                        
                                        <option value="">select</option>

                                        @if (old('is_chapter'))

                                            @forelse ($chapters as $chapter)
                                                
                                                @if ($chapter->subject_id == old('subject_id'))
                                                    
                                                    <option value="{{ $chapter->id }}" {{ old('chapter_id') == $chapter->id ? 'selected' : '' }}>{{ $chapter->name }}</option>
                                                    
                                                @endif

                                            @empty
                                            
                                                <option value="">No chapter found</option>

                                            @endforelse
                                            
                                        @endif

                                    </select>
                                    
                                    <x-input-error :messages="$errors->get('chapter_id')" class="mt-2" />
                                        
                                </div>

                            </div>

                            <div class="col-sm-12">

                                <div class="form-group">
                                    
                                    <label for="File">File</label>
                                    <input type="file" name="file" id="file" class="form-control form-contol-sm" />
                                    
                                    <x-input-error :messages="$errors->get('file')" class="mt-2" />
                                        
                                </div>

                            </div>
                           
                            <div class="col-sm-12">
                                <button type="submit" class="btn btn-sm btn-primary">Submit</button>
                            </div>
                        </div>
                    </form>


                </div>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

@endsection

@section('script')

<script>

    // get subjects
    $('#classroom_id').change(function () {
        
        let classroomId = $('option:selected' , this).val()

        $.ajax({
            type : 'get',
            url : "{{ route('question.import.getSubjects') }}",
            data : { classroomId : classroomId },
            dataType : 'json',
            success : function (response) {
                
                $('#subject_id').html(response.data).trigger('change')
                
                
            }
            
        })

    })

    // get chapters if subject is not a mockup test
    $('#subject_id').change(function () {
        
        let subjectId = $('option:selected' , this).val()
        var classRoomId = $('option:selected' , this).attr('data-classRoom') | ''

        $.ajax({
            type : 'get',
            url : "{{ route('question.import.getChapters') }}",
            data : { subjectId : subjectId },
            dataType : 'json',
            success : function (response) {
                
                if(classRoomId)
                {
                    
                    $('#isClassroom').val(1)

                }
                else
                {

                    $('#isClassroom').val('')

                }

                if(response.isChapter)
                {
                    
                    $('.chapterCol').css('display','')

                    $('#chapter_id').html(response.data)
                    
                    $('#isChapter').val(1)
                    
                }
                else
                {
                    
                    $('.chapterCol').css('display','none')
                    
                    $('#chapter_id').html(response.data)
                    
                    $('#isChapter').val('')

                }
                
            }
            
        })

    })

</script>

@endsection