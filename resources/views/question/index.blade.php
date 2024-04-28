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
        <div class="col-sm-6 text-right">
            <a href="{{ route('questions.download.import.format') }}" class="btn btn-sm btn-primary"><i class="fa fa-download"></i> Download Import Format</a>
        </div>
    </div>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="questionDataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>{{ __('#') }}</th>
                            <th>{{ __('Class') }}</th>
                            <th>{{ __('Subject') }}</th>
                            <th>{{ __('Chapter') }}</th>
                            {{-- <th>{{ __('Total Questions') }}</th> --}}
                            <th>{{ __('Actions') }}</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>

</div>

{{-- delete modal --}}

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="" id="deleteModalForm">
                @csrf
                @method('DELETE')
                <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                </div>
                <div class="modal-body" id="deleteModalFormMsg"></div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </form>
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

        var questionDataTable = $('#questionDataTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('questions.index') }}",
            columns: [
                {
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex',
                    orderable: false,
                    searchable: false
                },
                {
                    data: 'classroom.name',
                    name: 'classroom.name',
                    render : function (data){
                        return data ?? '';
                    }
                },
                {
                    data: 'subject.name',
                    name: 'subject.name',
                    render : function (data){
                        return data ?? '';
                    }
                },
                {
                    data: 'chapter.name',
                    name: 'chapter.name',
                    render : function (data){
                        return data ?? '';
                    }
                },
                // {data: 'totalQuestion', orderable: false, searchable: false},
                {data: 'action', name: 'action', orderable: false, searchable: false},
            ]
        });

    </script>

@endsection