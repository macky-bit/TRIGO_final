import 'package:flutter/material.dart';
import '../widgets/dashboard/location_bar.dart';
import '../widgets/dashboard/book_button.dart';
import '../widgets/dashboard/wallet_card.dart';
import '../widgets/dashboard/quick_actions.dart';
import '../widgets/dashboard/map_preview.dart';
import '../widgets/dashboard/recent_trips.dart';
import '../widgets/dashboard/bottom_nav.dart';
import '../screens/profile_screen.dart';
import '../screens/tourism_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
              LocationBar(),
              const SizedBox(height: 14),
              BookButton(),
              const SizedBox(height: 14),
              WalletCard(),
              const SizedBox(height: 14),
              QuickActions(),
              const SizedBox(height: 14),
              MapPreview(),
              const SizedBox(height: 20),
              RecentTrips(),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _currentNavIndex,
        onTap: (i) {
          setState(() => _currentNavIndex = i);
          if (i == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => TourismScreen()),
            );
          }
          if (i == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ProfileScreen()),
            );
          }
        },
      ),
    );
  }
}