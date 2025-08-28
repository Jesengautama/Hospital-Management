<?php

namespace App\Http\Controllers;

use App\Models\Specialty;
use Illuminate\Http\Request;

class SpecialtyController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $specialties = Specialty::withCount('doctors')->orderBy('name')->paginate(10);
        return view('specialties.index', compact('specialties'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('specialties.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255|unique:specialties',
            'description' => 'nullable|string|max:1000',
        ]);

        $validated['slug'] = \Str::slug($validated['name']);

        Specialty::create($validated);

        return redirect()->route('specialties.index')->with('status', 'Spesialis berhasil ditambahkan.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Specialty $specialty)
    {
        $specialty->load(['doctors.hospital']);
        return view('specialties.show', compact('specialty'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Specialty $specialty)
    {
        return view('specialties.edit', compact('specialty'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Specialty $specialty)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255|unique:specialties,name,' . $specialty->id,
            'description' => 'nullable|string|max:1000',
        ]);

        $validated['slug'] = \Str::slug($validated['name']);

        $specialty->update($validated);

        return redirect()->route('specialties.index')->with('status', 'Spesialis berhasil diperbarui.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Specialty $specialty)
    {
        if ($specialty->doctors()->count() > 0) {
            return back()->withErrors(['error' => 'Tidak dapat menghapus spesialis yang masih memiliki dokter.']);
        }
        
        $specialty->delete();
        return redirect()->route('specialties.index')->with('status', 'Spesialis berhasil dihapus.');
    }
}
