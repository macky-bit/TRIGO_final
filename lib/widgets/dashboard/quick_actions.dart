import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  static const Color _cardBg = Color(0xFF252525);
  static const Color _accent = Color(0xFFB87333);
  static const Color _cream  = Color(0xFFF5F0E8);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildAction(Icons.history,      'History'),
        const SizedBox(width: 10),
        _buildAction(Icons.star_outline, 'Saved Places'),
        const SizedBox(width: 10),
        _buildAction(Icons.help_outline, 'Help'),
      ],
    );
  }

  Widget _buildAction(IconData icon, String label) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: _cardBg,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Color(0xFF2E2A24), width: 1),
          ),
          child: Column(
            children: [
              Icon(icon, color: _accent, size: 22),
              const SizedBox(height: 6),
              Text(
                label,
                style: TextStyle(
                  color: _cream,
                  fontSize: 11,
                  fontFamily: 'Courier New',
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}