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

                                        <label for="Classroom">Class</label>

                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $subjectQuestion->classroom->name ?? '' }}</div>

                                    </div>
                                    

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="Subject">Subject </label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $subjectQuestion->subject->name ?? ''  }}</div>

                                    </div>

                                </div>
                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="Chapter">Chapter</label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ $subjectQuestion->chapter->name ?? ''  }}</div>
                                    
                                    </div>

                                </div>

                                <div class="col-sm-4">

                                    <div class="form-group">

                                        <label for="TotalQuestion">Total Questions</label>
                                        <div class="mb-0 font-weight-bold text-gray-800">{{ count($subjectQuestion->questions) ?? ''  }}</div>
                                    
                                    </div>

                                </div>
                               
                            </div>

                            <div class="row">
                                <div class="col-sm-12">
                                    <h5>Questions</h5>
                                </div>
                                <div class="col-sm-12">
                                    <div class="table-responsive">
                                        
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th style="width:3%;text-align:center;">S.No</th>
                                                    <th>Question</th>
                                                    <th style="width:15%">Correct Option</th>
                                                    <th style="width:36%">Options</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @php
                                                    $badgeClasses = ['badge-primary', 'badge-warning', 'badge-danger', 'badge-info'];
                                                @endphp
                                                @forelse ($subjectQuestion->questions as $question)
                                                    
                                                    <tr>
                                                        <td style="text-align: center;">{{  $loop->iteration }}</td>
                                                        <td>{{ $question->title }}</td>
                                                        <td style="text-align:center;">
                                                            <span class="badge badge-success rounded-pill">

                                                                {{  $question->correct_key }}

                                                            </span>
                                                        </td>
                                                        <td>

                                                            @forelse ($question->questionKeys as $questionKey)
                                                                
                                                                @php
                                                                    $randomBadgeClass = $badgeClasses[array_rand($badgeClasses)];
                                                                @endphp
                                                                <span class="badge {{ $randomBadgeClass }} rounded-pill">

                                                                    {{  $questionKey->option }}

                                                                </span>

                                                            @empty
                                                                
                                                            @endforelse

                                                        </td>
                                                    </tr>
                                                    
                                                @empty
                                                    
                                                @endforelse
                                                
                                            </tbody>
                                        </table>

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