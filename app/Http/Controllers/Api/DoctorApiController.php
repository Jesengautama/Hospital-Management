<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Doctor;
use Illuminate\Http\Request;

class DoctorApiController extends Controller
{
    public function index(Request $request)
    {
        $query = Doctor::with(['hospital', 'specialty']);
        
        if ($request->has('hospital_id')) {
            $query->where('hospital_id', $request->hospital_id);
        }
        
        if ($request->has('specialty_id')) {
            $query->where('specialty_id', $request->specialty_id);
        }
        
        $doctors = $query->get();
        
        return response()->json(['doctors' => $doctors]);
    }
}

