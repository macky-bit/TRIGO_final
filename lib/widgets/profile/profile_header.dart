import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  static const Color _cardBg = Color(0xFF252525);
  static const Color _accent = Color(0xFFB87333);
  static const Color _cream  = Color(0xFFF5F0E8);
  static const Color _label  = Color(0xFF888070);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xFF2E2A24), width: 1),
      ),
      child: Column(
        children: [
          // Avatar
          Stack(
            children: [
              Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _accent.withValues(alpha: 0.12),
                  border: Border.all(color: _accent, width: 2.5),
                ),
                child: const Icon(
                  Icons.person_rounded,
                  color: Color(0xFFB87333),
                  size: 48,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    color: _accent,
                    shape: BoxShape.circle,
                    border: Border.all(color: _cardBg, width: 2),
                  ),
                  child: const Icon(Icons.edit, color: Color(0xFF1A1A1A), size: 13),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          Text(
            'Juan dela Cruz',
            style: TextStyle(
              color: _cream,
              fontSize: 20,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'juan.delacruz@email.com',
            style: TextStyle(
              color: _label,
              fontSize: 11,
              fontFamily: 'Courier New',
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 20),

          // Stats
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _stat('24',     'Trips'),
              _dividerLine(),
              _stat('₱1,240', 'Spent'),
              _dividerLine(),
              _stat('4.9 ★',  'Rating'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _stat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: Color(0xFFB87333),
            fontSize: 15,
            fontFamily: 'Georgia',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF888070),
            fontSize: 10,
            fontFamily: 'Courier New',
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }

  Widget _dividerLine() {
    return Container(width: 1, height: 32, color: Color(0xFF2E2A24));
  }
}