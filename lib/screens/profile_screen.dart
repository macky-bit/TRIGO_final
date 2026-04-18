import 'package:flutter/material.dart';
import '../widgets/dashboard/bottom_nav.dart';
import '../widgets/profile/profile_header.dart';
import '../widgets/profile/profile_info.dart';
import '../widgets/profile/profile_menu.dart';
import '../widgets/profile/logout_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentNavIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E8),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              ProfileHeader(),
              const SizedBox(height: 20),
              ProfileInfo(),
              const SizedBox(height: 16),
              ProfileMenu(),
              const SizedBox(height: 24),
              LogoutButton(),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _currentNavIndex,
        onTap: (i) {
          if (i != 3) Navigator.pop(context);
          setState(() => _currentNavIndex = i);
        },
      ),
    );
  }
}