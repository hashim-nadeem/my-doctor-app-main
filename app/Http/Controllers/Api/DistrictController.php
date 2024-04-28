<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\DistrictRequest;
use App\Http\Resources\DistrictResource;
use App\Models\District;

class DistrictController extends Controller
{
    
    public function index(DistrictRequest $request)
    {
   
        try{

            $provinceId = $request->province_id ?? '';

            $districts = District::when($provinceId , function ($query) use ($provinceId){
                return $query->where('province_id',$provinceId);
            })->get();

            return DistrictResource::collection($districts)->additional(['success' => true]);
            
        } catch (\Throwable $th) {

            $response = [

                'success' => false,
                'errors' => 'Something wrong',

            ];

            return response()->json($response, 400);

        }        

    }

}
