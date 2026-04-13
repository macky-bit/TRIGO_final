import 'package:flutter/material.dart';

class LocationBar extends StatelessWidget {
  const LocationBar({super.key});

  static const Color _cardBg  = Color(0xFF252525);
  static const Color _accent  = Color(0xFFB87333);
  static const Color _cream   = Color(0xFFF5F0E8);
  static const Color _label   = Color(0xFF888070);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFF2E2A24), width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: _accent.withValues(alpha: 0.15),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.location_on, color: _accent, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CURRENT LOCATION',
                  style: TextStyle(
                    color: _accent,
                    fontSize: 10,
                    fontFamily: 'Courier New',
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'Baguio City, Session Road',
                  style: TextStyle(
                    color: _cream,
                    fontSize: 14,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
              decoration: BoxDecoration(
                border: Border.all(color: _label.withValues(alpha: 0.5)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Change',
                style: TextStyle(
                  color: _cream,
                  fontSize: 11,
                  fontFamily: 'Courier New',
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}