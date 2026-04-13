import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  static const Color _cardBg   = Color(0xFF252B3B);
  static const Color _textMain = Color(0xFFFFFFFF);
  static const Color _textSub  = Color(0xFFB0B8CC);
  static const Color _green    = Color(0xFF4CAF50);
  static const Color _divider  = Color(0xFF2E3548);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
            child: Text(
              'PERSONAL INFO',
              style: TextStyle(
                color: _green,
                fontSize: 10,
                fontFamily: 'Courier New',
                letterSpacing: 2.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(color: _divider, height: 1),
          _infoRow(Icons.phone_outlined,      'Phone',    '+63 912 345 6789'),
          Divider(color: _divider, height: 1, indent: 16, endIndent: 16),
          _infoRow(Icons.location_on_outlined, 'Address', 'Baguio City, Benguet'),
          Divider(color: _divider, height: 1, indent: 16, endIndent: 16),
          _infoRow(Icons.cake_outlined,        'Birthday', 'January 1, 1995'),
        ],
      ),
    );
  }

  Widget _infoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Icon(icon, color: Color(0xFF4CAF50), size: 20),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: _textSub,
                    fontSize: 10,
                    fontFamily: 'Courier New',
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: TextStyle(
                    color: _textMain,
                    fontSize: 13,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.chevron_right, color: _textSub, size: 18),
        ],
      ),
    );
  }
}