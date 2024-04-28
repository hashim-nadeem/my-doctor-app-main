<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProvinceRequest;
use Illuminate\Http\Request;
use App\Models\Province;
use DataTables;
class ProvinceController extends Controller
{
    public function index(Request $request)
    {

        if ($request->ajax()) {

            $data = Province::get();

            return Datatables::of($data)

                    ->addIndexColumn()
                    ->addColumn('checkbox', function($row){
                        return '<input type="checkbox" class="row-checkbox" value="' . $row->id . '">';
                    })

                    ->addColumn('action', function($row){


                        $btn = '';

                        $btn .= '<span class="action-icons">';

                            $btn .= '<a href="'. route('province.edit',$row->id) .'" class="btn btn-sm btn-primary btn-circle" data-toggle="tooltip" data-placement="bottom" title="Edit">
                                <i class="fa fa-edit"></i>
                            </a>';


                            $btn .= '<a href="javascript:void(0)" class="btn  btn-sm btn-danger btn-circle delete_row_" data-url="'. route('province.destroy',$row->id) .'"
                            data-msg="Are you sure you want to delete this province?" data-toggle="tooltip" data-placement="bottom" title="Delete">
                                <i class="fa fa-trash"></i>
                            </a>';


                        $btn .='</span>';


                        return $btn;

                    })

                    ->rawColumns(['checkbox', 'action'])
                    ->make(true);

        }

        $pageHead = 'Province';
        $pageTitle = 'Province';
        $activeMenu = 'province';
        return view('province.index', compact('activeMenu','pageHead','pageTitle'));


    }

    public function create()
    {

        $pageHead = 'Create Province';
        $pageTitle = 'Create Province';
        $activeMenu = 'create_province';

        return view('province.create', compact('activeMenu','pageHead','pageTitle'));

    }

    public function store(ProvinceRequest $request)
    {

        $province = [

            'name' => $request->name,
        ];

        Province::create($province);

        return redirect()->route('province.index')->with('success', 'Province created successfully.');
    }


    public function edit(Province $province)
    {

        $pageHead = 'Edit Province';
        $pageTitle = 'Edit Province';
        $activeMenu = 'province';

        return view('province.edit', compact('activeMenu','pageHead','pageTitle','province'));

    }

    public function update(ProvinceRequest $request, Province $province)
    {

        $province_update_arr = [

            'name' => $request->name,

        ];

        $province->update($province_update_arr);

        return redirect()->route('province.index')->with('success', 'Province updated successfully.');
    }

    public function show(Province $province)
    {

        abort(404);

    }

    public function destroy(Province $province)
    {

        $province->delete();

        return redirect()->route('province.index')->with('success', 'Province deleted successfully.');

    }


}

