import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  static const Color _cardBg  = Color(0xFF252B3B);
  static const Color _green   = Color(0xFF4CAF50);
  static const Color _textMain = Color(0xFFFFFFFF);
  static const Color _textSub  = Color(0xFFB0B8CC);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(20),
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
                  color: _green.withValues(alpha: 0.15),
                  border: Border.all(color: _green, width: 2.5),
                ),
                child: const Icon(
                  Icons.person_rounded,
                  color: Color(0xFF4CAF50),
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
                    color: _green,
                    shape: BoxShape.circle,
                    border: Border.all(color: _cardBg, width: 2),
                  ),
                  child: const Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 13,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          // Name
          Text(
            'Juan dela Cruz',
            style: TextStyle(
              color: _textMain,
              fontSize: 20,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),

          // Email
          Text(
            'juan.delacruz@email.com',
            style: TextStyle(
              color: _textSub,
              fontSize: 12,
              fontFamily: 'Courier New',
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),

          // Stats row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _stat('24', 'Trips'),
              _divider(),
              _stat('₱1,240', 'Total Spent'),
              _divider(),
              _stat('4.9 ★', 'Rating'),
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
            color: Color(0xFF4CAF50),
            fontSize: 16,
            fontFamily: 'Georgia',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFFB0B8CC),
            fontSize: 11,
            fontFamily: 'Courier New',
          ),
        ),
      ],
    );
  }

  Widget _divider() {
    return Container(
      width: 1,
      height: 32,
      color: Color(0xFF2E3548),
    );
  }
}