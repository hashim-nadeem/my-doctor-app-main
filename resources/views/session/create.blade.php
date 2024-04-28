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


                    <form action="{{ route('session.store') }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-sm-6">

                                <div class="form-group">
                                    
                                    <label for="Campus">Campus</label>

                                    <select name="campus_id[]" id="campus_id" class="form-control form-control-sm select2" multiple>
                                        <option value="">select</option>
                                        @forelse ($campus as $row)
                                            <option value="{{ $row->id }}" {{ is_array(old('campus_id')) && in_array($row->id, old('campus_id')) ? 'selected' : '' }}>{{ $row->name }}</option>
                                        @empty
                                            <option value="">No campus found</option>
                                        @endforelse
                                    </select>
                                    
                                    <x-input-error :messages="$errors->get('campus_id')" class="mt-2" />
                                        
                                </div>

                            </div>

                            <div class="col-sm-6">

                                <div class="form-group">
                                    
                                    <label for="Name">Name</label>
                                    <input type="text" name="name" id="name" class="form-control form-contol-sm" value="{{ old('name') }}" />
                                    
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