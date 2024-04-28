@extends('layouts.app')
@section('style')
    <!-- Custom styles for this page -->
    <link href="{{ asset('assets/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet" />
@endsection
@section('content')
    <div class="container-fluid">

        <div class="row">
            <div class="col-sm-6">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">{{ $pageHead }}</h1>

            </div>
        </div>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-4">

                        <div class="form-group">

                            <label for="Classroom">Classroom</label>

                            <select name="classroom_id" id="classroom_id" class="form-control form-contol-sm select2">

                                <option value="">select</option>
                                @forelse ($classRooms as $classroom)
                                    <option value="{{ $classroom->id }}"
                                        {{ old('classroom_id') == $classroom->id ? 'selected' : '' }}>{{ $classroom->name }}
                                    </option>

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
                                        <option value="{{ $subject->id }}"
                                            {{ old('subject_id') == $subject->id ? 'selected' : '' }}
                                            data-classRoom="{{ $subject->classroom_id ?? '' }}">{{ $subject->name }}
                                        </option>
                                    @endif

                                @empty

                                    <option value="">No subject found</option>
                                @endforelse

                            </select>

                            <x-input-error :messages="$errors->get('subject_id')" class="mt-2" />

                        </div>

                    </div>

                    <div class="col-sm-4 chapterCol" style="display: {{ old('is_chapter') != '' ? '' : 'none' }};">

                        <div class="form-group">

                            <label for="Chapter">Chapter</label>

                            <select name="chapter_id" id="chapter_id" class="form-control form-contol-sm select2">

                                <option value="">select</option>

                                @if (old('is_chapter'))
                                    @forelse ($chapters as $chapter)
                                        @if ($chapter->subject_id == old('subject_id'))
                                            <option value="{{ $chapter->id }}"
                                                {{ old('chapter_id') == $chapter->id ? 'selected' : '' }}>
                                                {{ $chapter->name }}</option>
                                        @endif

                                    @empty

                                        <option value="">No chapter found</option>
                                    @endforelse
                                @endif

                            </select>

                            <x-input-error :messages="$errors->get('chapter_id')" class="mt-2" />

                        </div>

                    </div>
                </div>
            </div>
            <div class="table-responsive container">
                <table class="table table-bordered" id="resultDataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>{{ __('#') }}</th>
                            <th>{{ __('Student Name') }}</th>
                            <th>{{ __('Matric Score') }}</th>
                            <th>{{ __('FSC Score') }}</th>
                            <th>{{ __('Student Corrected Answers') }}</th>
                            <th>{{ __('Total Questions') }}</th>
                            <th>{{ __('Test score') }}</th>
                            <th>{{ __('Percentage') }}</th>
                            <th>{{ __('Rank') }}</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection

@section('script')
    <!-- Page level plugins -->
    <script src="{{ asset('assets/vendor/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>

    <script src="{{ asset('assets/js/delete.js') }}"></script>

    <script>
        var resultDataTable = $('#resultDataTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: {
                url: "{{ route('results.index') }}",
                data: function(d) {
                    d.classroom_id = $('select[name=classroom_id]').val(),
                        d.subject_id = $('select[name=subject_id]').val(),
                        d.chapter_id = $('select[name=chapter_id]').val()
                }
            },
            columns: [{
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex',
                    orderable: false,
                    searchable: false
                },
                {
                    data: 'student_name',
                    name: 'student_name',
                    render: function(data) {
                        return data ?? '';
                    }
                },
                {
                    data: 'matric_score',
                    name: 'matric_score',
                    render: function(data) {
                        return data ?? '';
                    }
                },
                {
                    data: 'fsc_score',
                    name: 'fsc_score',
                    render: function(data) {
                        return data ?? '';
                    }
                },
                {
                    data: 'otherCorrectAnswers',
                    name: 'otherCorrectAnswers',
                    render: function(data) {
                        return data ?? '';
                    }
                },
                {
                    data: 'otherSubmitResults',
                    name: 'otherSubmitResults',
                    render: function(data) {
                        return data ?? '';
                    }
                },
                {
                    data: 'test_score',
                    name: 'test_score',
                    render: function(data) {
                        return data ?? '';
                    }
                },
                {
                    data: 'percentage',
                    name: 'percentage',
                    render: function(data) {
                        return data ? data + '%' : '';
                    }
                }, {
                    data: 'rank',
                    name: 'rank',
                    render: function(data) {
                        return data ?? '';
                    }
                },
            ]
        });

        // get subjects
        $('#classroom_id').change(function() {

            let classroomId = $('option:selected', this).val()

            $.ajax({
                type: 'get',
                url: "{{ route('question.import.getSubjects') }}",
                data: {
                    classroomId: classroomId
                },
                dataType: 'json',
                success: function(response) {
                    $('#subject_id').html(response.data).trigger('change')
                }

            })
            resultDataTable.draw();
        })

        // get chapters if subject is not a mockup test
        $('#subject_id').change(function() {

            let subjectId = $('option:selected', this).val()
            var classRoomId = $('option:selected', this).attr('data-classRoom') | ''

            $.ajax({
                type: 'get',
                url: "{{ route('question.import.getChapters') }}",
                data: {
                    subjectId: subjectId
                },
                dataType: 'json',
                success: function(response) {

                    if (classRoomId) {

                        $('#isClassroom').val(1)

                    } else {

                        $('#isClassroom').val('')

                    }

                    if (response.isChapter) {

                        $('.chapterCol').css('display', '')

                        $('#chapter_id').html(response.data)

                        $('#isChapter').val(1)

                    } else {

                        $('.chapterCol').css('display', 'none')

                        $('#chapter_id').html(response.data)

                        $('#isChapter').val('')

                    }

                }

            })
            resultDataTable.draw();

        })

        $('select[name=chapter_id]').change(function() {
            resultDataTable.draw();
        });
    </script>
@endsection
