<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Specialty;

class SpecialtySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $names = [
            'Dokter Umum', 'Dokter Gigi', 'Penyakit Dalam', 'Anak', 'Kandungan', 'Bedah', 'Neurologi', 'Kulit & Kelamin', 'THT', 'Mata'
        ];
        foreach ($names as $name) {
            Specialty::firstOrCreate(
                ['slug' => \Str::slug($name)],
                ['name' => $name, 'description' => null]
            );
        }
    }
}
