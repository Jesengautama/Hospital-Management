@extends('layouts.app')

@section('content')
<div class="max-w-4xl mx-auto p-6">
    <h1 class="text-2xl font-semibold mb-6">Buat Reservasi Baru</h1>

    @if ($errors->any())
        <div class="mb-4 p-3 bg-red-100 text-red-800 rounded">
            <ul class="list-disc pl-5">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="POST" action="{{ route('reservations.store') }}" class="space-y-6">
        @csrf
        
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <!-- Hospital Selection -->
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">Rumah Sakit *</label>
                <select id="hospital_id" name="hospital_id" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                    <option value="">Pilih Rumah Sakit</option>
                    @foreach($hospitals as $hospital)
                        <option value="{{ $hospital->id }}">{{ $hospital->name }} - {{ $hospital->city }}</option>
                    @endforeach
                </select>
            </div>

            <!-- Specialty Selection -->
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">Spesialis *</label>
                <select id="specialty_id" name="specialty_id" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                    <option value="">Pilih Spesialis</option>
                    @foreach($specialties as $specialty)
                        <option value="{{ $specialty->id }}">{{ $specialty->name }}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <!-- Doctor Selection -->
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">Dokter *</label>
                <select id="doctor_id" name="doctor_id" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                    <option value="">Pilih Dokter</option>
                </select>
            </div>

            <!-- Date Selection -->
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">Tanggal Reservasi *</label>
                <input type="date" id="reservation_date" name="reservation_date" min="{{ date('Y-m-d') }}" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" required>
            </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <!-- Schedule Selection -->
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">Jadwal *</label>
                <select id="schedule_id" name="schedule_id" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                    <option value="">Pilih Jadwal</option>
                </select>
            </div>

            <!-- Time Slot Selection -->
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">Slot Waktu *</label>
                <select id="time_slot" name="time_slot" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                    <option value="">Pilih Slot Waktu</option>
                </select>
            </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <!-- Start Time -->
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">Waktu Mulai *</label>
                <input type="time" id="start_time" name="start_time" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" required>
            </div>

            <!-- End Time -->
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-2">Waktu Selesai *</label>
                <input type="time" id="end_time" name="end_time" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" required>
            </div>
        </div>

        <!-- Notes -->
        <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">Catatan (Opsional)</label>
            <textarea name="notes" rows="3" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" placeholder="Tambahkan catatan atau keluhan..."></textarea>
        </div>

        <!-- Alternative Doctors Section -->
        <div id="alternatives_section" class="hidden">
            <h3 class="text-lg font-medium text-gray-900 mb-4">Dokter Alternatif di Rumah Sakit Lain</h3>
            <div id="alternatives_list" class="space-y-3">
                <!-- Alternative doctors will be populated here -->
            </div>
        </div>

        <div class="flex items-center gap-4">
            <button type="submit" class="px-6 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500">
                Buat Reservasi
            </button>
            <a href="{{ route('reservations.index') }}" class="px-6 py-2 bg-gray-300 text-gray-700 rounded-md hover:bg-gray-400">
                Batal
            </a>
        </div>
    </form>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const hospitalSelect = document.getElementById('hospital_id');
    const specialtySelect = document.getElementById('specialty_id');
    const doctorSelect = document.getElementById('doctor_id');
    const dateInput = document.getElementById('reservation_date');
    const scheduleSelect = document.getElementById('schedule_id');
    const timeSlotSelect = document.getElementById('time_slot');
    const startTimeInput = document.getElementById('start_time');
    const endTimeInput = document.getElementById('end_time');

    // Load doctors when hospital or specialty changes
    function loadDoctors() {
        const hospitalId = hospitalSelect.value;
        const specialtyId = specialtySelect.value;
        
        if (hospitalId && specialtyId) {
            fetch(`/api/doctors?hospital_id=${hospitalId}&specialty_id=${specialtyId}`)
                .then(response => response.json())
                .then(data => {
                    doctorSelect.innerHTML = '<option value="">Pilih Dokter</option>';
                    data.doctors.forEach(doctor => {
                        const option = document.createElement('option');
                        option.value = doctor.id;
                        option.textContent = `${doctor.name} - ${doctor.hospital.name}`;
                        doctorSelect.appendChild(option);
                    });
                });
        }
    }

    // Load schedules when doctor or date changes
    function loadSchedules() {
        const doctorId = doctorSelect.value;
        const date = dateInput.value;
        
        if (doctorId && date) {
            fetch(`/api/schedules?doctor_id=${doctorId}&date=${date}`)
                .then(response => response.json())
                .then(data => {
                    scheduleSelect.innerHTML = '<option value="">Pilih Jadwal</option>';
                    data.schedules.forEach(schedule => {
                        const option = document.createElement('option');
                        option.value = schedule.id;
                        option.textContent = `${schedule.start_time} - ${schedule.end_time}`;
                        scheduleSelect.appendChild(option);
                    });
                });
        }
    }

    // Load time slots when schedule changes
    function loadTimeSlots() {
        const doctorId = doctorSelect.value;
        const date = dateInput.value;
        
        if (doctorId && date) {
            fetch(`/reservations/slots/${doctorId}?date=${date}`)
                .then(response => response.json())
                .then(data => {
                    timeSlotSelect.innerHTML = '<option value="">Pilih Slot Waktu</option>';
                    data.slots.forEach(slot => {
                        const option = document.createElement('option');
                        option.value = `${slot.start_time}-${slot.end_time}`;
                        option.textContent = `${slot.start_time} - ${slot.end_time}`;
                        timeSlotSelect.appendChild(option);
                    });
                });
        }
    }

    // Set time when slot is selected
    timeSlotSelect.addEventListener('change', function() {
        if (this.value) {
            const [start, end] = this.value.split('-');
            startTimeInput.value = start;
            endTimeInput.value = end;
        }
    });

    // Event listeners
    hospitalSelect.addEventListener('change', loadDoctors);
    specialtySelect.addEventListener('change', loadDoctors);
    doctorSelect.addEventListener('change', loadSchedules);
    dateInput.addEventListener('change', loadSchedules);
    scheduleSelect.addEventListener('change', loadTimeSlots);
});
</script>
@endsection

