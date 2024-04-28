<?php

namespace App\Http\Controllers;

use App\Http\Requests\CampusRequest;
use App\Models\Campus;
use App\Models\District;
use Illuminate\Http\Request;
use DataTables;
class CampusController extends Controller
{
    public function index(Request $request)
    {

        if ($request->ajax()) {

            $data = Campus::with('district')->get();

            return Datatables::of($data)

                    ->addIndexColumn()

                    ->addColumn('action', function($row){

                        
                        $btn = '';

                        $btn .= '<span class="action-icons">';
                        
                            $btn .= '<a href="'. route('campus.edit',$row->id) .'" class="btn btn-sm btn-primary btn-circle" data-toggle="tooltip" data-placement="bottom" title="Edit">
                                <i class="fa fa-edit"></i>
                            </a>';

                            $btn .= '<a href="javascript:void(0)" class="btn  btn-sm btn-danger btn-circle delete_row_" data-url="'. route('campus.destroy',$row->id) .'" 
                            data-msg="Are you sure you want to delete this campus?" data-toggle="tooltip" data-placement="bottom" title="Delete">
                                <i class="fa fa-trash"></i>
                            </a>';
                        
                        
                        $btn .='</span>';
      

                        return $btn;

                    })

                    ->rawColumns(['action'])
                    ->make(true);

        }

        $pageHead = 'Campus';
        $pageTitle = 'Campus';
        $activeMenu = 'campus';
        return view('campus.index', compact('activeMenu','pageHead','pageTitle'));


    }

    public function create()
    {

        $pageHead = 'Create Campus';
        $pageTitle = 'Create Campus';
        $activeMenu = 'create_campus';

        $districts = District::get();

        return view('campus.create', compact('activeMenu','pageHead','pageTitle','districts'));

    }

    public function store(CampusRequest $request)
    {

        $campus = [

            'district_id' => $request->district_id,
            'name' => $request->name

        ];

        Campus::create($campus);

        return redirect()->route('campus.index')->with('success', 'Campus created successfully.');
    }

    
    public function edit(Campus $campus)
    {

        $pageHead = 'Edit Campus';
        $pageTitle = 'Edit Campus';
        $activeMenu = 'campus';

        $districts = District::get();

        return view('campus.edit', compact('activeMenu','pageHead','pageTitle','campus','districts'));

    }

    public function update(CampusRequest $request, Campus $campus)
    {
        
        $campusUpdateArr = [

            'district_id' => $request->district_id,
            'name' => $request->name
          
        ];

        $campus->update($campusUpdateArr);

        return redirect()->route('campus.index')->with('success', 'Campus updated successfully.');
    }

    public function show(Campus $campus)
    {

        abort(404);

    }

    public function destroy(Campus $campus)
    {

        $campus->delete();

        return redirect()->route('campus.index')->with('success', 'Campus deleted successfully.');
        
    }


}

