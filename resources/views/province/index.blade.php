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
            <div class="table-responsive">
                <!-- Above the DataTable script -->


                <table class="table table-bordered" id="provinceDataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>{{ __('#') }}</th>
                            <th>
                                <input type="checkbox" id="selectAllCheckbox">
                            </th>
                            <th>{{ __('Name') }}</th>
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

    {{-- <script>

        var provinceDataTable = $('#provinceDataTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('province.index') }}",
            columns: [
                {
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex',
                    orderable: false,
                    searchable: false
                },
                {data: 'name', name: 'name'},
                {data: 'action', name: 'action', orderable: false, searchable: false},
            ]
        });

    </script> --}}
    <script>
        var provinceDataTable = $('#provinceDataTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('province.index') }}",
            columns: [
                {
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex',
                    orderable: false,
                    searchable: false
                },
                {
                    data: 'checkbox',
                    name: 'checkbox',
                    orderable: false,
                    searchable: false,
                    className: 'text-center'
                },
                {data: 'name', name: 'name'},
                {data: 'action', name: 'action', orderable: false, searchable: false},
            ]
        });

        // Add event listener for checkbox changes
        $('#provinceDataTable tbody').on('change', 'input[type="checkbox"]', function(){
            $(this).closest('tr').toggleClass('selected', this.checked);
        });

        // Select All checkbox functionality
        $('#selectAllCheckbox').on('change', function(){
            var checkboxes = $('input.row-checkbox');
            checkboxes.prop('checked', this.checked);
            checkboxes.closest('tr').toggleClass('selected', this.checked);
        });

        // Delete selected rows
        $('#deleteSelected').on('click', function(){
            var selectedRows = provinceDataTable.rows('.selected').data();
            var selectedIds = $.map(selectedRows, function (item) {
                return item.id;
            });

            if (selectedIds.length > 0) {
                // Open the confirmation modal
                $('#deleteModal').modal('show');

                // Set the selected IDs in the modal form
                $('#deleteModalForm input[name="selectedIds"]').val(selectedIds);
            } else {
                alert("Please select at least one row to delete.");
            }
        });

        // Handle form submission when delete button is clicked in the modal
        $('#deleteModalForm').on('submit', function(e){
            e.preventDefault();

            // Retrieve selected IDs from the form
            var selectedIds = $(this).find('input[name="selectedIds"]').val();

            // Call your delete function with selectedIds
            // Example: deleteSelectedRows(selectedIds);

            // Close the modal after successful deletion
            $('#deleteModal').modal('hide');
        });
    </script>

@endsection
