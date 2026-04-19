import 'package:flutter/material.dart';
import '../../screens/driver_dashboard_screen.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  static const Color _cardBg  = Color(0xFFFFFFFF);
  static const Color _accent  = Color(0xFF000000);
  static const Color _dark    = Color(0xFF1A1A1A);
  static const Color _divider = Color(0xFFECE8E0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Driver Dashboard button
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => DriverDashboardScreen()),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: _dark,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: _accent.withValues(alpha: 0.2),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: _accent.withValues(alpha: 0.15),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.electric_rickshaw,
                    color: _cardBg,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DRIVER MODE',
                        style: TextStyle(
                          color: _cardBg,
                          fontSize: 9,
                          fontFamily: 'Courier New',
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'Switch to Driver Dashboard',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Georgia',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_rounded,
                    color: _cardBg, size: 14),
              ],
            ),
          ),
        ),
        const SizedBox(height: 14),

        // Settings section
        Container(
          decoration: BoxDecoration(
            color: _cardBg,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.06),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
                child: Text(
                  'SETTINGS',
                  style: TextStyle(
                    color: _accent,
                    fontSize: 10,
                    fontFamily: 'Courier New',
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Divider(color: _divider, height: 1),
              _menuItem(Icons.notifications_outlined, 'Notifications'),
              Divider(color: _divider, height: 1, indent: 16, endIndent: 16),
              _menuItem(Icons.lock_outline,            'Privacy & Security'),
              Divider(color: _divider, height: 1, indent: 16, endIndent: 16),
              _menuItem(Icons.help_outline,            'Help & Support'),
              Divider(color: _divider, height: 1, indent: 16, endIndent: 16),
              _menuItem(Icons.info_outline,            'About TriGO'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _menuItem(IconData icon, String label) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFF000000), size: 20),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 13,
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Icon(Icons.chevron_right,
                color: Color(0xFF888070), size: 18),
          ],
        ),
      ),
    );
  }
}