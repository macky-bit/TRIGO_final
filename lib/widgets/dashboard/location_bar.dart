import 'package:flutter/material.dart';

class LocationBar extends StatelessWidget {
  const LocationBar({super.key});

  static const Color _cardBg   = Color(0xFF252B3B);
  static const Color _green    = Color(0xFF4CAF50);
  static const Color _textMain = Color(0xFFFFFFFF);
  static const Color _textSub  = Color(0xFFB0B8CC);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: _green.withValues(alpha: 0.15),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.location_on, color: _green, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Current Location',
                  style: TextStyle(
                    color: _textSub,
                    fontSize: 11,
                    fontFamily: 'Courier New',
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Baguio City, Session Road',
                  style: TextStyle(
                    color: _textMain,
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
                border: Border.all(color: _textSub.withValues(alpha: 0.4)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Change',
                style: TextStyle(
                  color: _textMain,
                  fontSize: 12,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}