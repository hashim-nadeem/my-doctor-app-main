@extends('layouts.app')
@section('style')
    <!-- Custom styles for this page -->
    <link href="{{ asset('assets/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet" />
@endsection
@section('content')
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">{{ $pageHead }}</h1>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-4">

                        <div class="form-group">

                            <label for="Session">Session</label>

                            <select name="session_id" id="session_id" class="form-control form-contol-sm select2">

                                <option value="">select</option>
                                @forelse ($sessions as $session)
                                    <option value="{{ $session->id }}">{{ $session->name }}
                                    </option>

                                @empty

                                    <option value="">No Session found</option>
                                @endforelse

                            </select>
                        </div>

                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered" id="userDataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>{{ __('#') }}</th>
                                <th>{{ __('Name') }}</th>
                                <th>{{ __('Email') }}</th>
                                <th>{{ __('Contact No') }}</th>
                                <th>{{ __('District') }}</th>
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
        var userDataTable = $('#userDataTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: {
                url: "{{ route('users.index') }}",
                data: function(d) {
                    d.session_id = $('select[name=session_id]').val()
                }
            },
            columns: [{
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex',
                    orderable: false,
                    searchable: false
                },
                {
                    data: 'name',
                    name: 'name'
                },
                {
                    data: 'email',
                    name: 'email'
                },
                {
                    data: 'phone_no',
                    name: 'phone_no'
                },
                {
                    data: 'district.name',
                    name: 'district.name',
                    render: function(data, type, row) {
                        return data ? data : '-';
                    }
                },
                {
                    data: 'action',
                    name: 'action',
                    orderable: false,
                    searchable: false
                },
            ]
        });

        $('select[name=session_id]').change(function() {
            userDataTable.draw();
        });
    </script>
@endsection
