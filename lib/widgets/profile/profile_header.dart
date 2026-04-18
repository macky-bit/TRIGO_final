import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  static const Color _cardBg = Color(0xFFFFFFFF);
  static const Color _accent = Color(0xFF90EE90);
  static const Color _dark   = Color(0xFF1A1A1A);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _accent.withValues(alpha: 0.10),
                  border: Border.all(color: _accent, width: 2.5),
                ),
                child: Icon(Icons.person_rounded, color: _accent, size: 48),
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
                  child: const Icon(Icons.edit, color: Colors.white, size: 13),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            'Juan dela Cruz',
            style: TextStyle(
              color: _dark,
              fontSize: 20,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'juan.delacruz@email.com',
            style: TextStyle(
              color: _dark,
              fontSize: 11,
              fontFamily: 'Courier New',
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 20),
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
          style: const TextStyle(
            color: _dark,
            fontSize: 15,
            fontFamily: 'Georgia',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            color: _dark,
            fontSize: 10,
            fontFamily: 'Courier New',
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }

  Widget _dividerLine() =>
      Container(width: 1, height: 32, color: const Color(0xFFECE8E0));
}