import 'package:flutter/material.dart';
import '../widgets/dashboard/bottom_nav.dart';
import '../widgets/tourism/tourism_search.dart';
import '../widgets/tourism/tourism_grid.dart';
import '../screens/profile_screen.dart';

class TourismScreen extends StatefulWidget {
  const TourismScreen({super.key});

  @override
  State<TourismScreen> createState() => _TourismScreenState();
}

class _TourismScreenState extends State<TourismScreen> {
  int _currentNavIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111C1D),
      body: SafeArea(
        child: Column(
          children: [
            // Search bar at top
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: TourismSearch(),
            ),
            const SizedBox(height: 16),

            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Places\nin La Union',
                          style: TextStyle(
                            color: Color(0xFFF5F0E8),
                            fontSize: 22,
                            fontFamily: 'Georgia',
                            fontWeight: FontWeight.w700,
                            height: 1.3,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'See All',
                                style: TextStyle(
                                  color: Color(0xFFF5A623),
                                  fontSize: 13,
                                  fontFamily: 'Georgia',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Icon(
                                Icons.chevron_right,
                                color: Color(0xFFF5A623),
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    TourismGrid(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _currentNavIndex,
        onTap: (i) {
          setState(() => _currentNavIndex = i);
          if (i == 0) Navigator.pop(context);
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