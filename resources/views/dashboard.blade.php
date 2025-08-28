<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-primary-600 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-6">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <!-- Statistics Cards -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-6">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg border border-primary-100">
                    <div class="p-6">
                        <div class="flex items-center">
                            <div class="flex-shrink-0">
                                <svg class="h-6 w-6 text-primary-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                                </svg>
                            </div>
                            <div class="ml-5 w-0 flex-1">
                                <dl>
                                    <dt class="text-sm font-medium text-gray-500 truncate">Total Reservations</dt>
                                    <dd class="text-lg font-semibold text-primary-600">{{ $totalReservations }}</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg border border-primary-100">
                    <div class="p-6">
                        <div class="flex items-center">
                            <div class="flex-shrink-0">
                                <svg class="h-6 w-6 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                                </svg>
                            </div>
                            <div class="ml-5 w-0 flex-1">
                                <dl>
                                    <dt class="text-sm font-medium text-gray-500 truncate">Upcoming Appointments</dt>
                                    <dd class="text-lg font-semibold text-blue-600">{{ $upcomingCount }}</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg border border-primary-100">
                    <div class="p-6">
                        <div class="flex items-center">
                            <div class="flex-shrink-0">
                                <svg class="h-6 w-6 text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                            </div>
                            <div class="ml-5 w-0 flex-1">
                                <dl>
                                    <dt class="text-sm font-medium text-gray-500 truncate">Completed Visits</dt>
                                    <dd class="text-lg font-semibold text-green-600">{{ $completedCount }}</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Admin Statistics (if applicable) -->
            @if(isset($adminStats) && !empty($adminStats))
            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-6">
                @foreach($adminStats as $key => $value)
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg border border-primary-100">
                    <div class="p-6">
                        <div class="flex items-center">
                            <div class="flex-shrink-0">
                                <svg class="h-6 w-6 text-purple-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                                </svg>
                            </div>
                            <div class="ml-5 w-0 flex-1">
                                <dl>
                                    <dt class="text-sm font-medium text-gray-500 truncate">{{ ucfirst(str_replace('total', '', $key)) }}</dt>
                                    <dd class="text-lg font-semibold text-purple-600">{{ $value }}</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            @endif

            <!-- Upcoming Reservations -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg border border-primary-100">
                    <div class="p-6">
                        <h3 class="text-lg font-semibold text-primary-600 mb-4">Upcoming Appointments</h3>
                        @if($upcomingReservations->count() > 0)
                            <div class="space-y-4">
                                @foreach($upcomingReservations as $reservation)
                                <div class="border-l-4 border-primary-500 pl-4 py-2">
                                    <div class="flex justify-between items-start">
                                        <div>
                                            <p class="font-medium text-gray-900">{{ $reservation->doctor->name }}</p>
                                            <p class="text-sm text-gray-500">{{ $reservation->specialty->name }}</p>
                                            <p class="text-sm text-gray-500">{{ $reservation->hospital->name }}</p>
                                        </div>
                                        <div class="text-right">
                                            <p class="text-sm font-medium text-primary-600">{{ \Carbon\Carbon::parse($reservation->date)->format('M d, Y') }}</p>
                                            <p class="text-sm text-gray-500">{{ $reservation->time }}</p>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        @else
                            <p class="text-gray-500">No upcoming appointments.</p>
                        @endif
                    </div>
                </div>

                <!-- Recent Reservations -->
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg border border-primary-100">
                    <div class="p-6">
                        <h3 class="text-lg font-semibold text-primary-600 mb-4">Recent Reservations</h3>
                        @if($recentReservations->count() > 0)
                            <div class="space-y-4">
                                @foreach($recentReservations as $reservation)
                                <div class="border-l-4 border-gray-300 pl-4 py-2">
                                    <div class="flex justify-between items-start">
                                        <div>
                                            <p class="font-medium text-gray-900">{{ $reservation->doctor->name }}</p>
                                            <p class="text-sm text-gray-500">{{ $reservation->specialty->name }}</p>
                                        </div>
                                        <div class="text-right">
                                            <p class="text-sm text-gray-500">{{ \Carbon\Carbon::parse($reservation->date)->format('M d, Y') }}</p>
                                            <p class="text-sm text-gray-500">{{ $reservation->time }}</p>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        @else
                            <p class="text-gray-500">No recent reservations.</p>
                        @endif
                    </div>
                </div>
            </div>

            <!-- Quick Actions -->
            <div class="mt-6 bg-white overflow-hidden shadow-sm sm:rounded-lg border border-primary-100">
                <div class="p-6">
                    <h3 class="text-lg font-semibold text-primary-600 mb-4">Quick Actions</h3>
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                        <a href="{{ route('reservations.create') }}" class="bg-primary-50 hover:bg-primary-100 text-primary-700 px-4 py-3 rounded-lg text-center transition-colors">
                            <svg class="h-6 w-6 mx-auto mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
                            </svg>
                            <span class="text-sm font-medium">New Reservation</span>
                        </a>
                        <a href="{{ route('reservations.index') }}" class="bg-blue-50 hover:bg-blue-100 text-blue-700 px-4 py-3 rounded-lg text-center transition-colors">
                            <svg class="h-6 w-6 mx-auto mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v10a2 2 0 002 2h8a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2"></path>
                            </svg>
                            <span class="text-sm font-medium">View Reservations</span>
                        </a>
                        <a href="{{ route('doctors.index') }}" class="bg-green-50 hover:bg-green-100 text-green-700 px-4 py-3 rounded-lg text-center transition-colors">
                            <svg class="h-6 w-6 mx-auto mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                            </svg>
                            <span class="text-sm font-medium">Find Doctors</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
