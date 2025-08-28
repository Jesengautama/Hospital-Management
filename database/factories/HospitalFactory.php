<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Hospital>
 */
class HospitalFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $name = $this->faker->unique()->company() . ' Hospital';

        return [
            'name' => $name,
            'slug' => \Str::slug($name) . '-' . $this->faker->unique()->numberBetween(100, 999),
            'address' => $this->faker->streetAddress(),
            'city' => $this->faker->city(),
            'phone' => $this->faker->phoneNumber(),
            'latitude' => $this->faker->latitude(-8.0, 6.0),
            'longitude' => $this->faker->longitude(95.0, 142.0),
            'description' => $this->faker->optional()->paragraph(),
        ];
    }
}
