<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\SessionResource;
use App\Models\Session;

class SessionController extends Controller
{

    public function index(Request $request)
    {

        try {

            $campusId = $request->campus_id ?? '';

            $sessions = Session::when($campusId, function ($query) use ($campusId) {
                return $query->where('campus_id', $campusId);
            })->get();

            return SessionResource::collection($sessions)->additional(['success' => true]);
        } catch (\Throwable $th) {

            $response = [

                'success' => false,
                'errors' => 'Something wrong',

            ];

            return response()->json($response, 400);
        }
    }
}
