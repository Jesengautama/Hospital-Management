<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Doctor;
use App\Models\Schedule;

class ScheduleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $doctors = Doctor::all();
        foreach ($doctors as $doctor) {
            Schedule::factory()->count(5)->state([
                'doctor_id' => $doctor->id,
            ])->create();
        }
    }
}
