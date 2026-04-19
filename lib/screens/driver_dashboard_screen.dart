import 'package:flutter/material.dart';
import '../widgets/driver/driver_top_bar.dart';
import '../widgets/driver/driver_status_toggle.dart';
import '../widgets/driver/driver_earnings.dart';
import '../widgets/driver/booking_request_card.dart';
import '../widgets/driver/driver_stats.dart';
import '../widgets/driver/driver_route.dart';
import '../widgets/driver/driver_history.dart';
import '../widgets/driver/driver_bottom_nav.dart';
import '../screens/maintenance_screen.dart';

class DriverDashboardScreen extends StatefulWidget {
  const DriverDashboardScreen({super.key});

  @override
  State<DriverDashboardScreen> createState() => _DriverDashboardScreenState();
}

class _DriverDashboardScreenState extends State<DriverDashboardScreen> {
  bool _isOnline = true;
  bool _hasBookingRequest = true;
  int _currentNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E8),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DriverTopBar(),
              const SizedBox(height: 14),

              DriverStatusToggle(
                isOnline: _isOnline,
                onToggle: (val) => setState(() => _isOnline = val),
              ),
              const SizedBox(height: 14),

              DriverEarnings(),
              const SizedBox(height: 14),

              if (_hasBookingRequest) ...[
                BookingRequestCard(
                  onAccept: () => setState(() => _hasBookingRequest = false),
                  onDecline: () => setState(() => _hasBookingRequest = false),
                ),
                const SizedBox(height: 14),
              ],

              DriverStats(),
              const SizedBox(height: 14),

              DriverRoute(),
              const SizedBox(height: 20),

              DriverHistory(),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: DriverBottomNav(
        currentIndex: _currentNavIndex,
        onTap: (i) {
          setState(() => _currentNavIndex = i);

          if (i == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MaintenanceScreen(
                featureName: 'History'
              )),
            );
          }

          if (i == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MaintenanceScreen(
                featureName: 'Earnings'
              )),
            );
          }
          if (i == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MaintenanceScreen(
                featureName: 'Passengers'
              )),
            );
          }
          if (i == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MaintenanceScreen(
                featureName: 'Stats'
              )),
            );
          }
        },
      ),
    );
  }
}