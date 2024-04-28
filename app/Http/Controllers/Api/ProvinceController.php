<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProvinceResource;
use App\Models\Province;

class ProvinceController extends Controller
{
    
    public function index()
    {
    
        try {

            $provinces = Province::get();

            return ProvinceResource::collection($provinces)->additional(['success' => true]);

        } catch (\Throwable $th) {

            $response = [

                'success' => false,
                'errors' => 'Something wrong',

            ];

            return response()->json($response, 400);

        }

    }

}
