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


                    <form action="{{ route('classroom.update', $classroom->id) }}" method="post">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-sm-6">

                                <div class="form-group">
                                    
                                    <label for="Session">Session</label>

                                    <select name="session_id[]" id="session_id" class="form-control form-contol-sm select2" multiple>
                                        <option value="">Select</option>
                                        @forelse ($sessions as $session)
                                            <option value="{{ $session->id }}" 
                                                @if(in_array($session->id, old('session_id', $classroom->sessions->pluck('id')->toArray())))
                                                    selected
                                                @endif>{{ $session->name }}</option>
                                        @empty
                                            <option value="">No sessions found</option>
                                        @endforelse
                                    </select>
                                    
                                    
                                    <x-input-error :messages="$errors->get('session_id')" class="mt-2" />
                                        
                                </div>

                            </div>
                            <div class="col-sm-6">

                                <div class="form-group">
                                    
                                    <label for="Name">Name</label>
                                    <input type="text" name="name" id="name" class="form-control form-contol-sm" value="{{ old('name',$classroom->name) }}" />
                                    
                                    <x-input-error :messages="$errors->get('name')" class="mt-2" />
                                        
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