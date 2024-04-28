<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\CampusRequest;
use App\Http\Resources\CampusResource;
use App\Models\Campus;

class CampusController extends Controller
{

    public function index(CampusRequest $request)
    {

        try {

            $districtId = $request->district_id ?? '';

            $campuses = Campus::when($districtId, function ($query) use ($districtId) {
                return $query->where('district_id', $districtId);
            })->get();

            return CampusResource::collection($campuses)->additional(['success' => true]);

        } catch (\Throwable $th) {

            $response = [

                'success' => false,
                'errors' => 'Something wrong',

            ];

            return response()->json($response, 400);

        }
        
    }
}
