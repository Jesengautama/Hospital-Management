<?php

namespace App\Http\Controllers;

use App\Models\Reservation;
use App\Models\Doctor;
use App\Models\Hospital;
use App\Models\Specialty;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    /**
     * Display the dashboard with user-specific data
     */
    public function index()
    {
        $user = Auth::user();
        
        // Get user's upcoming reservations
        $upcomingReservations = Reservation::with(['doctor', 'hospital', 'specialty'])
            ->where('user_id', $user->id)
            ->where('date', '>=', now()->format('Y-m-d'))
            ->orderBy('date')
            ->orderBy('time')
            ->limit(5)
            ->get();

        // Get user's recent reservations
        $recentReservations = Reservation::with(['doctor', 'hospital', 'specialty'])
            ->where('user_id', $user->id)
            ->orderBy('created_at', 'desc')
            ->limit(5)
            ->get();

        // Get counts for dashboard stats
        $totalReservations = Reservation::where('user_id', $user->id)->count();
        $upcomingCount = Reservation::where('user_id', $user->id)
            ->where('date', '>=', now()->format('Y-m-d'))
            ->count();
        $completedCount = Reservation::where('user_id', $user->id)
            ->where('date', '<', now()->format('Y-m-d'))
            ->count();

        // For admin users, show additional stats
        $adminStats = [];
        if ($user->isAdmin()) {
            $adminStats = [
                'totalDoctors' => Doctor::count(),
                'totalHospitals' => Hospital::count(),
                'totalSpecialties' => Specialty::count(),
                'totalReservations' => Reservation::count(),
            ];
        }

        return view('dashboard', compact(
            'upcomingReservations',
            'recentReservations',
            'totalReservations',
            'upcomingCount',
            'completedCount',
            'adminStats'
        ));
    }
}
