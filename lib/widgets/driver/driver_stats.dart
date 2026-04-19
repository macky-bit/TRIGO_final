import 'package:flutter/material.dart';

class DriverStats extends StatelessWidget {
  const DriverStats({super.key});

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
            'TODAY\'S STATS',
            style: TextStyle(
              color: Color(0xFFB87333),
              fontSize: 10,
              fontFamily: 'Courier New',
              letterSpacing: 2.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              _statCard(Icons.electric_rickshaw, '6', 'Trips', const Color(0xFFB87333)),
              const SizedBox(width: 10),
              _statCard(Icons.star_rounded, '4.9', 'Rating', const Color(0xFFFFB300)),
              const SizedBox(width: 10),
              _statCard(Icons.access_time_rounded, '3.2h', 'Online', const Color(0xFF4CAF50)),
              const SizedBox(width: 10),
              _statCard(Icons.route_outlined, '18km', 'Distance', const Color(0xFF888070)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _statCard(IconData icon, String value, String label, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 20),
            const SizedBox(height: 6),
            Text(
              value,
              style: TextStyle(
                color: color,
                fontSize: 14,
                fontFamily: 'Georgia',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: const TextStyle(
                color: Color(0xFF888070),
                fontSize: 9,
                fontFamily: 'Courier New',
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}