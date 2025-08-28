@extends('layouts.app')

@section('content')
<div class="max-w-3xl mx-auto p-6">
    <h1 class="text-2xl font-semibold mb-6">Tambah Dokter</h1>

    @if ($errors->any())
        <div class="mb-4 p-3 bg-red-100 text-red-800 rounded">
            <ul class="list-disc pl-5">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="POST" action="{{ route('doctors.store') }}" class="space-y-4">
        @csrf

        <div>
            <label class="block text-sm font-medium">Nama Dokter *</label>
            <input type="text" name="name" value="{{ old('name') }}" class="mt-1 w-full border rounded p-2" required>
        </div>

        <div class="grid grid-cols-2 gap-4">
            <div>
                <label class="block text-sm font-medium">Rumah Sakit *</label>
                <select name="hospital_id" class="mt-1 w-full border rounded p-2" required>
                    <option value="">Pilih Rumah Sakit</option>
                    @foreach ($hospitals as $hospital)
                        <option value="{{ $hospital->id }}" @selected(old('hospital_id') == $hospital->id)>
                            {{ $hospital->name }} - {{ $hospital->city }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div>
                <label class="block text-sm font-medium">Spesialis *</label>
                <select name="specialty_id" class="mt-1 w-full border rounded p-2" required>
                    <option value="">Pilih Spesialis</option>
                    @foreach ($specialties as $specialty)
                        <option value="{{ $specialty->id }}" @selected(old('specialty_id') == $specialty->id)>
                            {{ $specialty->name }}
                        </option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="grid grid-cols-2 gap-4">
            <div>
                <label class="block text-sm font-medium">Email</label>
                <input type="email" name="email" value="{{ old('email') }}" class="mt-1 w-full border rounded p-2">
            </div>
            <div>
                <label class="block text-sm font-medium">Telepon</label>
                <input type="text" name="phone" value="{{ old('phone') }}" class="mt-1 w-full border rounded p-2">
            </div>
        </div>

        <div>
            <label class="block text-sm font-medium">Biografi</label>
            <textarea name="bio" class="mt-1 w-full border rounded p-2" rows="3">{{ old('bio') }}</textarea>
        </div>

        <div class="flex items-center gap-3">
            <button type="submit" class="px-4 py-2 bg-blue-600 text-white rounded">Simpan</button>
            <a href="{{ route('doctors.index') }}" class="px-4 py-2 bg-gray-100 rounded">Batal</a>
        </div>
    </form>
</div>
@endsection


