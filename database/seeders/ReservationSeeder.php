<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Reservation;
use App\Models\Doctor;
use App\Models\User;

class ReservationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $users = User::factory()->count(10)->create();
        $doctors = Doctor::with(['hospital', 'specialty'])->get();
        foreach ($doctors as $doctor) {
            Reservation::factory()->count(2)->state(function () use ($doctor, $users) {
                $date = fake()->dateTimeBetween('+1 day', '+10 days');
                return [
                    'doctor_id' => $doctor->id,
                    'hospital_id' => $doctor->hospital_id,
                    'specialty_id' => $doctor->specialty_id,
                    'user_id' => $users->random()->id,
                    'date' => $date->format('Y-m-d'),
                    'time' => $date->format('H:i:s'),
                ];
            })->create();
        }
    }
}
