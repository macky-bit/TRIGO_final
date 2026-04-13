import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  static const Color _cardBg   = Color(0xFF252B3B);
  static const Color _textMain = Color(0xFFFFFFFF);
  static const Color _yellow   = Color(0xFFFFC107);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildAction(Icons.history, 'History', Colors.white70),
        const SizedBox(width: 10),
        _buildAction(Icons.star, 'Saved Places', _yellow),
        const SizedBox(width: 10),
        _buildAction(Icons.help_outline, 'Help', Colors.white70),
      ],
    );
  }

  Widget _buildAction(IconData icon, String label, Color iconColor) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: _cardBg,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: [
              Icon(icon, color: iconColor, size: 22),
              const SizedBox(height: 6),
              Text(
                label,
                style: TextStyle(
                  color: _textMain,
                  fontSize: 11,
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}