import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  static const Color _cardBg  = Color(0xFFFFFFFF);
  static const Color _dark   = Color(0xFF1A1A1A);
  static const Color _divider = Color(0xFFECE8E0);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              'PERSONAL INFO',
              style: TextStyle(
                color: _dark,
                fontSize: 10,
                fontFamily: 'Courier New',
                letterSpacing: 2.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(color: _divider, height: 1),
          _infoRow(Icons.phone_outlined,       'PHONE',    '+63 985 803 4255'),
          Divider(color: _divider, height: 1, indent: 16, endIndent: 16),
          _infoRow(Icons.location_on_outlined, 'ADDRESS',  'Sagayad, San Fernando City, La Union'),
          Divider(color: _divider, height: 1, indent: 16, endIndent: 16),
          _infoRow(Icons.cake_outlined,        'BIRTHDAY', 'March 21, 2006'),
        ],
      ),
    );
  }

  Widget _infoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Icon(icon, color: _dark, size: 20),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF888070),
                    fontSize: 9,
                    fontFamily: 'Courier New',
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  value,
                  style: const TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 13,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Color(0xFF888070), size: 18),
        ],
      ),
    );
  }
}