@extends('layouts.app')

@section('content')
<div class="max-w-3xl mx-auto p-6">
    <h1 class="text-2xl font-semibold mb-6">Tambah Rumah Sakit</h1>

    @if ($errors->any())
        <div class="mb-4 p-3 bg-red-100 text-red-800 rounded">
            <ul class="list-disc pl-5">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="POST" action="{{ route('hospitals.store') }}" class="space-y-4">
        @csrf

        <div>
            <label class="block text-sm font-medium">Nama Rumah Sakit *</label>
            <input type="text" name="name" value="{{ old('name') }}" class="mt-1 w-full border rounded p-2" required>
        </div>

        <div>
            <label class="block text-sm font-medium">Alamat</label>
            <textarea name="address" class="mt-1 w-full border rounded p-2" rows="2">{{ old('address') }}</textarea>
        </div>

        <div class="grid grid-cols-2 gap-4">
            <div>
                <label class="block text-sm font-medium">Kota</label>
                <input type="text" name="city" value="{{ old('city') }}" class="mt-1 w-full border rounded p-2">
            </div>
            <div>
                <label class="block text-sm font-medium">Telepon</label>
                <input type="text" name="phone" value="{{ old('phone') }}" class="mt-1 w-full border rounded p-2">
            </div>
        </div>

        <div class="grid grid-cols-2 gap-4">
            <div>
                <label class="block text-sm font-medium">Latitude</label>
                <input type="number" step="0.000001" name="latitude" value="{{ old('latitude') }}" class="mt-1 w-full border rounded p-2">
            </div>
            <div>
                <label class="block text-sm font-medium">Longitude</label>
                <input type="number" step="0.000001" name="longitude" value="{{ old('longitude') }}" class="mt-1 w-full border rounded p-2">
            </div>
        </div>

        <div>
            <label class="block text-sm font-medium">Deskripsi</label>
            <textarea name="description" class="mt-1 w-full border rounded p-2" rows="3">{{ old('description') }}</textarea>
        </div>

        <div class="flex items-center gap-3">
            <button type="submit" class="px-4 py-2 bg-blue-600 text-white rounded">Simpan</button>
            <a href="{{ route('hospitals.index') }}" class="px-4 py-2 bg-gray-100 rounded">Batal</a>
        </div>
    </form>
</div>
@endsection


