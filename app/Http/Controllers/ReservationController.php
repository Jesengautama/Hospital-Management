<?php

namespace App\Http\Controllers;

use App\Models\Reservation;
use App\Models\Hospital;
use App\Models\Specialty;
use Illuminate\Http\Request;

class ReservationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $reservations = Reservation::with(['doctor.specialty', 'doctor.hospital', 'hospital', 'specialty'])
            ->where('user_id', auth()->id())
            ->orderByDesc('created_at')
            ->get();
        return view('reservations.index', compact('reservations'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $hospitals = Hospital::all();
        $specialties = Specialty::all();
        
        return view('reservations.create', compact('hospitals', 'specialties'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'hospital_id' => 'required|exists:hospitals,id',
            'specialty_id' => 'required|exists:specialties,id',
             'doctor_id' => 'required|exists:doctors,id',
            'reservation_date' => 'required|date',
            'schedule_id' => 'required|exists:schedules,id',
            'time_slot' => 'required|string',
            'notes' => 'nullable|string',
        ]);

        $reservation = Reservation::create([
            'user_id' => auth()->id(),
            'hospital_id' => $request->hospital_id,
            'specialty_id' => $request->specialty_id,
            'doctor_id' => $request->doctor_id,
            'date' => $request->reservation_date,
            'time' => $request->time_slot,
            'notes' => $request->notes,
            'status' => 'booked', // matches the database default
            'reference_code' => uniqid('ref_'), // generate a unique reference code
        ]);

        return redirect()->route('reservations.index')->with('status', 'Reservation created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Reservation $reservation)
    {
        $reservation->load(['doctor.specialty', 'doctor.hospital', 'hospital', 'specialty']);
        return view('reservations.show', compact('reservation'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Reservation $reservation)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Reservation $reservation)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Reservation $reservation)
    {
        //
    }

    /**
     * Get available time slots for a doctor on a specific date.
     */
    public function slots($doctorId, Request $request)
    {
        $date = $request->query('date');
        // This should return available time slots for the doctor on the given date
        // For now, return a simple response
        return response()->json([
            'slots' => [
                ['start_time' => '08:00', 'end_time' => '09:00'],
                ['start_time' => '09:00', 'end_time' => '10:00'],
                ['start_time' => '10:00', 'end_time' => '11:00'],
                ['start_time' => '14:00', 'end_time' => '15:00'],
                ['start_time' => '15:00', 'end_time' => '16:00'],
            ]
        ]);
    }

    /**
     * Get alternative doctors for a specialty.
     */
    public function alternatives(Request $request)
    {
        $specialtyId = $request->query('specialty_id');
        $hospitalId = $request->query('hospital_id');
        // This should return alternative doctors for the same specialty
        // For now, return a simple response
        return response()->json([
            'alternatives' => []
        ]);
    }
}
