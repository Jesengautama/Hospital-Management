<?php

namespace App\Http\Controllers;

use App\Models\Doctor;
use App\Models\Hospital;
use App\Models\Specialty;
use Illuminate\Http\Request;

class DoctorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $doctors = Doctor::with(['hospital', 'specialty'])->orderBy('name')->paginate(10);
        return view('doctors.index', compact('doctors'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $hospitals = Hospital::orderBy('name')->get();
        $specialties = Specialty::orderBy('name')->get();
        return view('doctors.create', compact('hospitals', 'specialties'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'nullable|email|unique:doctors',
            'phone' => 'nullable|string|max:20',
            'bio' => 'nullable|string|max:1000',
            'hospital_id' => 'required|exists:hospitals,id',
            'specialty_id' => 'required|exists:specialties,id',
        ]);

        Doctor::create($validated);

        return redirect()->route('doctors.index')->with('status', 'Dokter berhasil ditambahkan.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Doctor $doctor)
    {
        $doctor->load(['hospital', 'specialty', 'schedules', 'reservations']);
        return view('doctors.show', compact('doctor'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Doctor $doctor)
    {
        $hospitals = Hospital::orderBy('name')->get();
        $specialties = Specialty::orderBy('name')->get();
        return view('doctors.edit', compact('doctor', 'hospitals', 'specialties'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Doctor $doctor)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'nullable|email|unique:doctors,email,' . $doctor->id,
            'phone' => 'nullable|string|max:20',
            'bio' => 'nullable|string|max:1000',
            'hospital_id' => 'required|exists:hospitals,id',
            'specialty_id' => 'required|exists:specialties,id',
        ]);

        $doctor->update($validated);

        return redirect()->route('doctors.index')->with('status', 'Dokter berhasil diperbarui.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Doctor $doctor)
    {
        if ($doctor->reservations()->count() > 0) {
            return back()->withErrors(['error' => 'Tidak dapat menghapus dokter yang masih memiliki reservasi.']);
        }
        
        $doctor->delete();
        return redirect()->route('doctors.index')->with('status', 'Dokter berhasil dihapus.');
    }
}
