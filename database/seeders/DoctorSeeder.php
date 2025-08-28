<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Doctor;
use App\Models\Hospital;
use App\Models\Specialty;

class DoctorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $hospitals = Hospital::all();
        $specialties = Specialty::all();
        if ($hospitals->isEmpty()) {
            $hospitals = Hospital::factory()->count(3)->create();
        }
        if ($specialties->isEmpty()) {
            $specialties = Specialty::factory()->count(5)->create();
        }

        foreach ($hospitals as $hospital) {
            Doctor::factory()
                ->count(8)
                ->state(function () use ($hospital, $specialties) {
                    return [
                        'hospital_id' => $hospital->id,
                        'specialty_id' => $specialties->random()->id,
                    ];
                })
                ->create();
        }
    }
}
