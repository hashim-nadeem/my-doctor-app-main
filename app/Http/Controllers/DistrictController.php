<?php

namespace App\Http\Controllers;

use App\Http\Requests\DistrictRequest;
use App\Http\Requests\ProvinceRequest;
use App\Models\District;
use App\Models\Province;
use Illuminate\Http\Request;
use DataTables;
class DistrictController extends Controller
{
    public function index(Request $request)
    {

        if ($request->ajax()) {

            $data = District::with('province')->get();

            return Datatables::of($data)

                    ->addIndexColumn()

                    ->addColumn('action', function($row){

                        
                        $btn = '';

                        $btn .= '<span class="action-icons">';
                        
                            $btn .= '<a href="'. route('district.edit',$row->id) .'" class="btn btn-sm btn-primary btn-circle" data-toggle="tooltip" data-placement="bottom" title="Edit">
                                <i class="fa fa-edit"></i>
                            </a>';

                            $btn .= '<a href="javascript:void(0)" class="btn  btn-sm btn-danger btn-circle delete_row_" data-url="'. route('district.destroy',$row->id) .'" 
                            data-msg="Are you sure you want to delete this district?" data-toggle="tooltip" data-placement="bottom" title="Delete">
                                <i class="fa fa-trash"></i>
                            </a>';
                        
                        
                        $btn .='</span>';
      

                        return $btn;

                    })

                    ->rawColumns(['action'])
                    ->make(true);

        }

        $pageHead = 'District';
        $pageTitle = 'District';
        $activeMenu = 'district';
        return view('district.index', compact('activeMenu','pageHead','pageTitle'));


    }

    public function create()
    {

        $pageHead = 'Create District';
        $pageTitle = 'Create District';
        $activeMenu = 'create_district';

        $provinces = Province::get();

        return view('district.create', compact('activeMenu','pageHead','pageTitle','provinces'));

    }

    public function store(DistrictRequest $request)
    {

        $district = [

            'province_id' => $request->province_id,
            'name' => $request->name

        ];

        District::create($district);

        return redirect()->route('district.index')->with('success', 'District created successfully.');
    }

    
    public function edit(District $district)
    {

        $pageHead = 'Edit District';
        $pageTitle = 'Edit District';
        $activeMenu = 'district';

        $provinces = Province::get();

        return view('district.edit', compact('activeMenu','pageHead','pageTitle','district','provinces'));

    }

    public function update(DistrictRequest $request, District $district)
    {
        
        $districtUpdateArr = [

            'province_id' => $request->province_id,
            'name' => $request->name
          
        ];

        $district->update($districtUpdateArr);

        return redirect()->route('district.index')->with('success', 'District updated successfully.');
    }

    public function show(District $district)
    {

        abort(404);

    }

    public function destroy(District $district)
    {

        $district->delete();

        return redirect()->route('district.index')->with('success', 'District deleted successfully.');
        
    }


}

