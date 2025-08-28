@extends('layouts.app')

@section('content')
<div class="max-w-7xl mx-auto p-6">
    <div class="flex items-center justify-between mb-6">
        <h1 class="text-2xl font-semibold">Detail Spesialis</h1>
        <div class="flex items-center space-x-3">
            <a href="{{ route('specialties.edit', $specialty) }}" class="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">
                Edit
            </a>
            <a href="{{ route('specialties.index') }}" class="px-4 py-2 bg-gray-600 text-white rounded hover:bg-gray-700">
                Kembali ke Daftar
            </a>
        </div>
    </div>

    @if (session('status'))
        <div class="mb-4 p-3 bg-green-100 text-green-800 rounded">
            {{ session('status') }}
        </div>
    @endif

    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
        <!-- Specialty Information -->
        <div class="lg:col-span-1">
            <div class="bg-white shadow rounded-lg overflow-hidden">
                <div class="bg-gradient-to-r from-green-600 to-green-700 px-6 py-4">
                    <h2 class="text-xl font-semibold text-white">{{ $specialty->name }}</h2>
                </div>
                
                <div class="p-6">
                    <div class="space-y-4">
                        @if($specialty->description)
                            <div>
                                <h3 class="text-sm font-medium text-gray-600">Deskripsi</h3>
                                <p class="text-gray-900">{{ $specialty->description }}</p>
                            </div>
                        @endif
                        
                        <div>
                            <h3 class="text-sm font-medium text-gray-600">Jumlah Dokter</h3>
                            <p class="text-2xl font-bold text-green-600">{{ $specialty->doctors->count() }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Doctors List -->
        <div class="lg:col-span-2">
            <div class="bg-white shadow rounded-lg overflow-hidden">
                <div class="px-6 py-4 border-b border-gray-200">
                    <h2 class="text-lg font-semibold text-gray-900">Dokter Spesialis {{ $specialty->name }}</h2>
                </div>
                
                @if($specialty->doctors->count() > 0)
                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Nama Dokter
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Rumah Sakit
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Email
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Aksi
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                @foreach ($specialty->doctors as $doctor)
                                    <tr class="hover:bg-gray-50">
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm font-medium text-gray-900">
                                                {{ $doctor->name }}
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900">
                                                {{ $doctor->hospital->name }}
                                            </div>
                                            <div class="text-sm text-gray-500">
                                                {{ $doctor->hospital->city }}
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900">
                                                {{ $doctor->email ?? 'Tidak tersedia' }}
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                            <a href="{{ route('doctors.show', $doctor) }}" 
                                               class="text-blue-600 hover:text-blue-900">
                                                Detail
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                @else
                    <div class="p-12 text-center">
                        <div class="text-gray-400 text-6xl mb-4">👨‍⚕️</div>
                        <h3 class="text-lg font-medium text-gray-900 mb-2">Belum ada dokter</h3>
                        <p class="text-gray-500 mb-6">Spesialis ini belum memiliki dokter terdaftar.</p>
                        <a href="{{ route('doctors.create') }}" class="px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700">
                            Tambah Dokter
                        </a>
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection

