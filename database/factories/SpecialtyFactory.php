<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Specialty>
 */
class SpecialtyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $name = $this->faker->unique()->randomElement([
            'Dokter Umum', 'Dokter Gigi', 'Penyakit Dalam', 'Anak', 'Kandungan', 'Bedah', 'Neurologi', 'Kulit & Kelamin', 'THT', 'Mata'
        ]);

        return [
            'name' => $name,
            'slug' => \Str::slug($name),
            'description' => $this->faker->optional()->sentence(),
        ];
    }
}
