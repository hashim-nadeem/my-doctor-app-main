@extends('layouts.app')
@section('content')
    
 <!-- Begin Page Content -->
 <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-1">
        <h1 class="h3 mb-0 text-gray-800">{{ $pageHead }}</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">


                    <form action="{{ route('subject.store') }}" method="post">
                        @csrf
                        <div class="row">

                            
                            <div class="col-sm-6">

                                <div class="form-group">
                                    
                                    <label for="Name">Name</label>
                                    <input type="text" name="name" id="name" class="form-control form-contol-sm" value="{{ old('name') }}" />
                                    
                                    <x-input-error :messages="$errors->get('name')" class="mt-2" />
                                        
                                </div>

                            </div>
                            <div class="col-sm-2" style="margin-top:38px;">

                                <div class="form-group">
                                    <div class="custom-control custom-checkbox small">
                                        <input type="checkbox" class="custom-control-input" id="isClassroomCheck" name="is_classroom" value="checked" {{ old('is_classroom') == 'checked'?'checked':'' }} />
                                        <label class="custom-control-label pt-1" for="isClassroomCheck">
                                            Is Classroom?
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 classroomIdCol" style="display: {{ old('is_classroom') != 'checked'?'none' :'' }} ">

                                <div class="form-group">
                                    
                                    <label for="Classroom">Classroom</label>

                                    <select name="classroom_id[]" id="classroom_id" class="form-control form-contol-sm select2" multiple>
                                        
                                        <option value="">select</option>

                                        @forelse ($classrooms as $row)
                                            
                                            <option value="{{ $row->id }}" {{ old('classroom_id') == $row->id?'selected':'' }}>{{ $row->name }}</option>

                                        @empty

                                            <option value="">No classroom found</option>

                                        @endforelse

                                    </select>
                                    
                                    <x-input-error :messages="$errors->get('classroom_id')" class="mt-2" />
                                        
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

        $('#isClassroomCheck').change(function () {
    
            $(this).is(':checked') ? $('.classroomIdCol').css('display','') : $('.classroomIdCol').css('display','none')
            
        })

    </script>

@endsection