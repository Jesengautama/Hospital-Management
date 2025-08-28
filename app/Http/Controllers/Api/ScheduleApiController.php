<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Schedule;
use Illuminate\Http\Request;

class ScheduleApiController extends Controller
{
    public function index(Request $request)
    {
        $query = Schedule::with(['doctor.hospital', 'doctor.specialty']);
        
        if ($request->has('doctor_id')) {
            $query->where('doctor_id', $request->doctor_id);
        }
        
        if ($request->has('date')) {
            $query->where('date', $request->date);
        }
        
        $query->where('is_active', true);
        
        $schedules = $query->get();
        
        return response()->json(['schedules' => $schedules]);
    }
}

