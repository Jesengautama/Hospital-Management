@extends('layouts.app')

@section('content')
<div class="max-w-4xl mx-auto p-6">
    <div class="flex items-center justify-between mb-6">
        <h1 class="text-2xl font-semibold">Detail Reservasi</h1>
        <a href="{{ route('reservations.index') }}" class="px-4 py-2 bg-gray-600 text-white rounded hover:bg-gray-700">
            Kembali ke Daftar
        </a>
    </div>

    @if (session('status'))
        <div class="mb-4 p-3 bg-green-100 text-green-800 rounded">
            {{ session('status') }}
        </div>
    @endif

    <div class="bg-white shadow rounded-lg overflow-hidden">
        <!-- Header with Status -->
        <div class="bg-gradient-to-r from-blue-600 to-blue-700 px-6 py-4">
            <div class="flex items-center justify-between">
                <h2 class="text-xl font-semibold text-white">
                    Reservasi #{{ $reservation->id }}
                </h2>
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
                <span class="px-3 py-1 text-sm font-semibold rounded-full {{ $statusColors[$reservation->status] ?? 'bg-gray-100 text-gray-800' }}">
                    {{ $statusLabels[$reservation->status] ?? ucfirst($reservation->status) }}
                </span>
            </div>
        </div>

        <!-- Reservation Details -->
        <div class="p-6">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <!-- Doctor Information -->
                <div class="bg-gray-50 p-4 rounded-lg">
                    <h3 class="text-lg font-semibold text-gray-900 mb-3">Informasi Dokter</h3>
                    <div class="space-y-2">
                        <div>
                            <span class="text-sm font-medium text-gray-600">Nama Dokter:</span>
                            <p class="text-gray-900">{{ $reservation->doctor->name }}</p>
                        </div>
                        <div>
                            <span class="text-sm font-medium text-gray-600">Spesialis:</span>
                            <p class="text-gray-900">{{ $reservation->doctor->specialty->name }}</p>
                        </div>
                        <div>
                            <span class="text-sm font-medium text-gray-600">Rumah Sakit:</span>
                            <p class="text-gray-900">{{ $reservation->doctor->hospital->name }}</p>
                        </div>
                        <div>
                            <span class="text-sm font-medium text-gray-600">Alamat:</span>
                            <p class="text-gray-900">{{ $reservation->doctor->hospital->address }}, {{ $reservation->doctor->hospital->city }}</p>
                        </div>
                    </div>
                </div>

                <!-- Appointment Details -->
                <div class="bg-gray-50 p-4 rounded-lg">
                    <h3 class="text-lg font-semibold text-gray-900 mb-3">Detail Janji Temu</h3>
                    <div class="space-y-2">
                        <div>
                            <span class="text-sm font-medium text-gray-600">Tanggal:</span>
                            <p class="text-gray-900">{{ \Carbon\Carbon::parse($reservation->reservation_date)->format('d/m/Y') }}</p>
                        </div>
                        <div>
                            <span class="text-sm font-medium text-gray-600">Waktu:</span>
                            <p class="text-gray-900">{{ substr($reservation->start_time, 0, 5) }} - {{ substr($reservation->end_time, 0, 5) }}</p>
                        </div>
                        <div>
                            <span class="text-sm font-medium text-gray-600">Jadwal:</span>
                            <p class="text-gray-900">{{ $reservation->schedule->start_time }} - {{ $reservation->schedule->end_time }}</p>
                        </div>
                        <div>
                            <span class="text-sm font-medium text-gray-600">Dibuat pada:</span>
                            <p class="text-gray-900">{{ $reservation->created_at->format('d/m/Y H:i') }}</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Notes Section -->
            @if($reservation->notes)
                <div class="mt-6 bg-blue-50 p-4 rounded-lg">
                    <h3 class="text-lg font-semibold text-gray-900 mb-2">Catatan</h3>
                    <p class="text-gray-700">{{ $reservation->notes }}</p>
                </div>
            @endif

            <!-- Important Information for Pending Reservations -->
            @if($reservation->status === 'pending')
                <div class="mt-6 bg-yellow-50 border border-yellow-200 p-4 rounded-lg">
                    <div class="flex">
                        <div class="flex-shrink-0">
                            <svg class="h-5 w-5 text-yellow-400" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M8.257 3.099c.765-1.36 2.722-1.36 3.486 0l5.58 9.92c.75 1.334-.213 2.98-1.742 2.98H4.42c-1.53 0-2.493-1.646-1.743-2.98l5.58-9.92zM11 13a1 1 0 11-2 0 1 1 0 012 0zm-1-8a1 1 0 00-1 1v3a1 1 0 002 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                            </svg>
                        </div>
                        <div class="ml-3">
                            <h3 class="text-sm font-medium text-yellow-800">
                                Informasi Penting
                            </h3>
                            <div class="mt-2 text-sm text-yellow-700">
                                <ul class="list-disc pl-5 space-y-1">
                                    <li>Harap datang 15 menit sebelum jadwal yang ditentukan</li>
                                    <li>Bawa kartu identitas dan kartu asuransi (jika ada)</li>
                                    <li>Reservasi ini masih menunggu konfirmasi dari rumah sakit</li>
                                    <li>Anda akan mendapat notifikasi jika status berubah</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            @endif

            <!-- Contact Information -->
            <div class="mt-6 bg-gray-50 p-4 rounded-lg">
                <h3 class="text-lg font-semibold text-gray-900 mb-3">Informasi Kontak</h3>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                        <span class="text-sm font-medium text-gray-600">Rumah Sakit:</span>
                        <p class="text-gray-900">{{ $reservation->doctor->hospital->name }}</p>
                        <p class="text-sm text-gray-600">Tel: {{ $reservation->doctor->hospital->phone ?? 'Tidak tersedia' }}</p>
                    </div>
                    <div>
                        <span class="text-sm font-medium text-gray-600">Dokter:</span>
                        <p class="text-gray-900">{{ $reservation->doctor->name }}</p>
                        <p class="text-sm text-gray-600">Email: {{ $reservation->doctor->email ?? 'Tidak tersedia' }}</p>
                    </div>
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="mt-6 flex items-center justify-between pt-6 border-t border-gray-200">
                <div class="flex items-center space-x-3">
                    @if($reservation->status === 'pending')
                        <form method="POST" action="{{ route('reservations.destroy', $reservation) }}" 
                              onsubmit="return confirm('Yakin ingin membatalkan reservasi ini?')">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="px-4 py-2 bg-red-600 text-white rounded hover:bg-red-700">
                                Batalkan Reservasi
                            </button>
                        </form>
                    @endif
                </div>
                <div class="flex items-center space-x-3">
                    <a href="{{ route('reservations.index') }}" class="px-4 py-2 bg-gray-300 text-gray-700 rounded hover:bg-gray-400">
                        Kembali
                    </a>
                    @if($reservation->status === 'pending')
                        <a href="{{ route('reservations.create') }}" class="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">
                            Buat Reservasi Baru
                        </a>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

