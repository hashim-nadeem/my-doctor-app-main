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
                            <div class="row">
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="Name">Name</label>

                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->name }}</div>

                                    </div>
                                    

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="FatherName">Father Name </label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->father_name }}</div>

                                    </div>

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="Email">Email</label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->email }}</div>
                                    
                                    </div>

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="PhoneNo">Phone No# </label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->phone_no }}</div>

                                    </div>

                                </div>
                              
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="Province">Province </label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->province->name ?? '' }}</div>

                                    </div>

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="Distirct">Distirct </label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->district->name ?? '' }}</div>

                                    </div>

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="Campus">Campus </label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->campus->name ?? '' }}</div>

                                    </div>

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="Session">Session </label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->session->name ?? '' }}</div>

                                    </div>

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="Classroom">Classroom </label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->classroom->name ?? '' }}</div>

                                    </div>

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="MaticMarks">Matric Marks </label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->matric_marks }}</div>

                                    </div>

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="FscMarks">Fsc Marks </label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $user->fsc_marks }}</div>

                                    </div>

                                </div>
                               
                               
                            </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->
@endsection