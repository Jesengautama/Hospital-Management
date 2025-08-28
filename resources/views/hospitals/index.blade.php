@extends('layouts.app')

@section('content')
<div class="max-w-7xl mx-auto p-6">
    <div class="flex items-center justify-between mb-6">
        <h1 class="text-2xl font-semibold">Kelola Rumah Sakit</h1>
        <a href="{{ route('hospitals.create') }}" class="px-4 py-2 bg-blue-600 text-white rounded">Tambah Rumah Sakit</a>
    </div>

    @if (session('status'))
        <div class="mb-4 p-3 bg-green-100 text-green-800 rounded">{{ session('status') }}</div>
    @endif

    <div class="bg-white shadow rounded">
        <table class="min-w-full text-sm">
            <thead>
                <tr class="border-b">
                    <th class="text-left p-3">Nama</th>
                    <th class="text-left p-3">Kota</th>
                    <th class="text-left p-3">Telepon</th>
                    <th class="text-left p-3">Dokter</th>
                    <th class="text-left p-3">Aksi</th>
                </tr>
            </thead>
            <tbody>
            @forelse ($hospitals as $hospital)
                <tr class="border-b">
                    <td class="p-3">{{ $hospital->name }}</td>
                    <td class="p-3">{{ $hospital->city }}</td>
                    <td class="p-3">{{ $hospital->phone }}</td>
                    <td class="p-3">{{ $hospital->doctors_count ?? 0 }}</td>
                    <td class="p-3 text-right space-x-2">
                        <a href="{{ route('hospitals.show', $hospital) }}" class="text-blue-600 hover:underline">Detail</a>
                        <a href="{{ route('hospitals.edit', $hospital) }}" class="text-green-600 hover:underline">Edit</a>
                        <form method="POST" action="{{ route('hospitals.destroy', $hospital) }}" class="inline" onsubmit="return confirm('Hapus rumah sakit ini?')">
                            @csrf
                            @method('DELETE')
                            <button class="text-red-600 hover:underline">Hapus</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr><td class="p-3" colspan="5">Belum ada rumah sakit.</td></tr>
            @endforelse
            </tbody>
        </table>
    </div>

    <div class="mt-4">{{ $hospitals->links() }}</div>
</div>
@endsection


