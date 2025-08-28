@extends('layouts.app')

@section('content')
<div class="max-w-7xl mx-auto p-6">
    <div class="flex items-center justify-between mb-6">
        <h1 class="text-2xl font-semibold">Detail Jadwal Dokter</h1>
        <div class="flex items-center space-x-3">
            <a href="{{ route('schedules.edit', $schedule) }}" class="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">
                Edit
            </a>
            <a href="{{ route('schedules.index') }}" class="px-4 py-2 bg-gray-600 text-white rounded hover:bg-gray-700">
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
        <!-- Schedule Information -->
        <div class="lg:col-span-1">
            <div class="bg-white shadow rounded-lg overflow-hidden">
                <div class="bg-gradient-to-r from-indigo-600 to-indigo-700 px-6 py-4">
                    <h2 class="text-xl font-semibold text-white">Jadwal #{{ $schedule->id }}</h2>
                    <p class="text-indigo-100">{{ \Carbon\Carbon::parse($schedule->date)->format('d/m/Y') }}</p>
                </div>
                
                <div class="p-6">
                    <div class="space-y-4">
                        <div>
                            <h3 class="text-sm font-medium text-gray-600">Dokter</h3>
                            <p class="text-gray-900">{{ $schedule->doctor->name }}</p>
                            <p class="text-sm text-gray-500">{{ $schedule->doctor->specialty->name }}</p>
                        </div>
                        
                        <div>
                            <h3 class="text-sm font-medium text-gray-600">Rumah Sakit</h3>
                            <p class="text-gray-900">{{ $schedule->doctor->hospital->name }}</p>
                            <p class="text-sm text-gray-500">{{ $schedule->doctor->hospital->city }}</p>
                        </div>
                        
                        <div>
                            <h3 class="text-sm font-medium text-gray-600">Waktu Praktik</h3>
                            <p class="text-gray-900">{{ $schedule->start_time }} - {{ $schedule->end_time }}</p>
                        </div>
                        
                        <div>
                            <h3 class="text-sm font-medium text-gray-600">Maksimal Pasien</h3>
                            <p class="text-gray-900">{{ $schedule->max_patients }} pasien</p>
                        </div>
                        
                        <div>
                            <h3 class="text-sm font-medium text-gray-600">Status</h3>
                            <span class="px-2 py-1 text-xs font-semibold rounded-full {{ $schedule->is_active ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800' }}">
                                {{ $schedule->is_active ? 'Aktif' : 'Tidak Aktif' }}
                            </span>
                        </div>
                        
                        <div>
                            <h3 class="text-sm font-medium text-gray-600">Reservasi Terdaftar</h3>
                            <p class="text-2xl font-bold text-indigo-600">{{ $schedule->reservations->count() }}</p>
                        </div>
                        
                        <div>
                            <h3 class="text-sm font-medium text-gray-600">Slot Tersedia</h3>
                            <p class="text-2xl font-bold text-green-600">{{ $schedule->max_patients - $schedule->reservations->count() }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Reservations List -->
        <div class="lg:col-span-2">
            <div class="bg-white shadow rounded-lg overflow-hidden">
                <div class="px-6 py-4 border-b border-gray-200">
                    <h2 class="text-lg font-semibold text-gray-900">Daftar Reservasi</h2>
                </div>
                
                @if($schedule->reservations->count() > 0)
                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Pasien
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Waktu Reservasi
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Status
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Catatan
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                @foreach ($schedule->reservations as $reservation)
                                    <tr class="hover:bg-gray-50">
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm font-medium text-gray-900">
                                                {{ $reservation->user->name }}
                                            </div>
                                            <div class="text-sm text-gray-500">
                                                {{ $reservation->user->email }}
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900">
                                                {{ substr($reservation->start_time, 0, 5) }} - {{ substr($reservation->end_time, 0, 5) }}
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            @php
                                                $statusColors = [
                                                    'pending' => 'bg-yellow-100 text-yellow-800',
                                                    'confirmed' => 'bg-green-100 text-green-800',
                                                    'cancelled' => 'bg-red-100 text-red-800',
                                                    'completed' => 'bg-blue-100 text-blue-800'
                                                ];
                                                $statusLabels = [
                                                    'pending' => 'Menunggu',
                                                    'confirmed' => 'Dikonfirmasi',
                                                    'cancelled' => 'Dibatalkan',
                                                    'completed' => 'Selesai'
                                                ];
                                            @endphp
                                            <span class="px-2 py-1 text-xs font-semibold rounded-full {{ $statusColors[$reservation->status] ?? 'bg-gray-100 text-gray-800' }}">
                                                {{ $statusLabels[$reservation->status] ?? ucfirst($reservation->status) }}
                                            </span>
                                        </td>
                                        <td class="px-6 py-4">
                                            <div class="text-sm text-gray-900">
                                                {{ $reservation->notes ?: 'Tidak ada catatan' }}
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                @else
                    <div class="p-8 text-center">
                        <div class="text-gray-400 text-4xl mb-4">📋</div>
                        <h3 class="text-lg font-medium text-gray-900 mb-2">Belum ada reservasi</h3>
                        <p class="text-gray-500">Jadwal ini belum memiliki reservasi.</p>
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection

