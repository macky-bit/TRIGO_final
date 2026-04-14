import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  static const Color _cardBg  = Color(0xFF252525);
  static const Color _accent  = Color(0xFFB87333);
  static const Color _divider = Color(0xFF2E2A24);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _divider, width: 1),
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
    );
  }

  Widget _menuItem(IconData icon, String label) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Icon(icon, color: Color(0xFFB87333), size: 20),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: Color(0xFFF5F0E8),
                  fontSize: 13,
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Icon(Icons.chevron_right, color: Color(0xFF888070), size: 18),
          ],
        ),
      ),
    );
  }
}