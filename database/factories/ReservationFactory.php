<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Reservation>
 */
class ReservationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $date = $this->faker->dateTimeBetween('+1 day', '+10 days');
        return [
            'user_id' => \App\Models\User::factory(),
            'doctor_id' => \App\Models\Doctor::factory(),
            'hospital_id' => function (array $attrs) {
                return \App\Models\Doctor::find($attrs['doctor_id'])->hospital_id ?? \App\Models\Hospital::factory();
            },
            'specialty_id' => function (array $attrs) {
                return \App\Models\Doctor::find($attrs['doctor_id'])->specialty_id ?? \App\Models\Specialty::factory();
            },
            'date' => $date->format('Y-m-d'),
            'time' => $date->format('H:i:s'),
            'status' => 'booked',
            'reference_code' => strtoupper($this->faker->unique()->bothify('RES-#####')),
            'notes' => $this->faker->optional()->sentence(),
        ];
    }
}
