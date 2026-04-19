import 'package:flutter/material.dart';

class DriverEarnings extends StatelessWidget {
  const DriverEarnings({super.key});

  static const Color _accent  = Color(0xFFB87333);
  static const Color _dark    = Color(0xFF1A1A1A);
  static const Color _label   = Color(0xFF888070);
  static const Color _divider = Color(0xFFECE8E0);
  static const Color _goal    = Color(0xFF4CAF50);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
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
          Text(
            'EARNINGS',
            style: TextStyle(
              color: _dark,
              fontSize: 10,
              fontFamily: 'Courier New',
              letterSpacing: 2.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _earningBox('TODAY', '₱480.00', const Color(0xFF4CAF50)),
              Container(
                width: 1, height: 50, color: _divider,
                margin: const EdgeInsets.symmetric(horizontal: 12),
              ),
              _earningBox('THIS WEEK', '₱2,340.00', _accent),
              Container(
                width: 1, height: 50, color: _divider,
                margin: const EdgeInsets.symmetric(horizontal: 12),
              ),
              _earningBox('TOTAL', '₱18,560.00', _dark),
            ],
          ),
          const SizedBox(height: 14),
          Divider(color: _divider, height: 1),
          const SizedBox(height: 12),

          // Progress bar for daily goal
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily Goal',
                style: TextStyle(
                  color: _label,
                  fontSize: 11,
                  fontFamily: 'Courier New',
                  letterSpacing: 1,
                ),
              ),
              Text(
                '₱480 / ₱600',
                style: TextStyle(
                  color: _dark,
                  fontSize: 11,
                  fontFamily: 'Courier New',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: 0.8,
              backgroundColor: const Color(0xFFECE8E0),
              valueColor: AlwaysStoppedAnimation<Color>(_goal),
              minHeight: 6,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '80% of daily goal reached',
            style: TextStyle(
              color: _label,
              fontSize: 10,
              fontFamily: 'Courier New',
            ),
          ),
        ],
      ),
    );
  }

  Widget _earningBox(String label, String amount, Color color) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: const Color(0xFF888070),
              fontSize: 9,
              fontFamily: 'Courier New',
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            amount,
            style: TextStyle(
              color: color,
              fontSize: 13,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}