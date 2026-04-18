import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  static const Color _cardBg = Color(0xFFFFFFFF);
  static const Color _accent = Color(0xFF90EE90);
  static const Color _dark   = Color(0xFF1A1A1A);

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
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.06),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Icon(icon, color: _accent, size: 22),
              const SizedBox(height: 6),
              Text(
                label,
                style: TextStyle(
                  color: _dark,
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