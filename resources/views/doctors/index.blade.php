@extends('layouts.app')

@section('content')
<div class="max-w-7xl mx-auto p-6">
    <div class="flex items-center justify-between mb-6">
        <h1 class="text-2xl font-semibold">Kelola Dokter</h1>
        <a href="{{ route('doctors.create') }}" class="px-4 py-2 bg-blue-600 text-white rounded">Tambah Dokter</a>
    </div>

    @if (session('status'))
        <div class="mb-4 p-3 bg-green-100 text-green-800 rounded">{{ session('status') }}</div>
    @endif

    @if ($errors->any())
        <div class="mb-4 p-3 bg-red-100 text-red-800 rounded">
            @foreach ($errors->all() as $error)
                <div>{{ $error }}</div>
            @endforeach
        </div>
    @endif

    <div class="bg-white shadow rounded">
        <table class="min-w-full text-sm">
            <thead>
                <tr class="border-b">
                    <th class="text-left p-3">Nama</th>
                    <th class="text-left p-3">Spesialis</th>
                    <th class="text-left p-3">Rumah Sakit</th>
                    <th class="text-left p-3">Email</th>
                    <th class="text-left p-3">Telepon</th>
                    <th class="text-left p-3">Aksi</th>
                </tr>
            </thead>
            <tbody>
            @forelse ($doctors as $doctor)
                <tr class="border-b">
                    <td class="p-3">{{ $doctor->name }}</td>
                    <td class="p-3">{{ $doctor->specialty->name }}</td>
                    <td class="p-3">{{ $doctor->hospital->name }}</td>
                    <td class="p-3">{{ $doctor->email ?? '-' }}</td>
                    <td class="p-3">{{ $doctor->phone ?? '-' }}</td>
                    <td class="p-3 text-right space-x-2">
                        <a href="{{ route('doctors.show', $doctor) }}" class="text-blue-600 hover:underline">Detail</a>
                        <a href="{{ route('doctors.edit', $doctor) }}" class="text-green-600 hover:underline">Edit</a>
                        <form method="POST" action="{{ route('doctors.destroy', $doctor) }}" class="inline" onsubmit="return confirm('Hapus dokter ini?')">
                            @csrf
                            @method('DELETE')
                            <button class="text-red-600 hover:underline">Hapus</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr><td class="p-3" colspan="6">Belum ada dokter.</td></tr>
            @endforelse
            </tbody>
        </table>
    </div>

    <div class="mt-4">{{ $doctors->links() }}</div>
</div>
@endsection


