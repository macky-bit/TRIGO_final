import 'package:flutter/material.dart';

class DriverRoute extends StatelessWidget {
  const DriverRoute({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CURRENT ROUTE',
                style: TextStyle(
                  color: Color(0xFFB87333),
                  fontSize: 10,
                  fontFamily: 'Courier New',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color(0xFF4CAF50).withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'IN PROGRESS',
                  style: TextStyle(
                    color: Color(0xFF4CAF50),
                    fontSize: 9,
                    fontFamily: 'Courier New',
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          // Map placeholder - green/white
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              children: [
                // Road horizontal
                Positioned(
                  top: 60,
                  left: 0,
                  right: 0,
                  child: Container(height: 30, color: Colors.white),
                ),
                // Road vertical
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 130,
                  child: Container(width: 24, color: Colors.white),
                ),
                // Blocks
                ..._blocks(),
                // Start pin (green)
                Positioned(
                  left: 30,
                  top: 42,
                  child: _pin(const Color(0xFF4CAF50)),
                ),
                // End pin (copper)
                Positioned(
                  right: 30,
                  top: 42,
                  child: _pin(const Color(0xFFB87333)),
                ),
                // Route line
                Positioned(
                  top: 54,
                  left: 46,
                  right: 46,
                  child: Container(
                    height: 3,
                    decoration: BoxDecoration(
                      color: const Color(0xFFB87333),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),

          // From / To
          Row(
            children: [
              Expanded(
                child: _routePoint(
                  Icons.my_location_rounded,
                  const Color(0xFF4CAF50),
                  'FROM',
                  'Sagayad, San Fernando City',
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.arrow_forward_rounded,
                  color: const Color(0xFFCCC5B5), size: 16),
              const SizedBox(width: 8),
              Expanded(
                child: _routePoint(
                  Icons.location_on_rounded,
                  const Color(0xFFB87333),
                  'TO',
                  'SM City San Fernando City',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _blocks() {
    final positions = [
      [10.0, 10.0, 80.0, 45.0],
      [155.0, 10.0, 80.0, 45.0],
      [250.0, 10.0, 90.0, 45.0],
      [10.0, 96.0, 80.0, 45.0],
      [155.0, 96.0, 80.0, 45.0],
      [250.0, 96.0, 90.0, 45.0],
    ];
    return positions
        .map((p) => Positioned(
              left: p[0],
              top: p[1],
              child: Container(
                width: p[2],
                height: p[3],
                decoration: BoxDecoration(
                  color: const Color(0xFFC8E6C9),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ))
        .toList();
  }

  Widget _pin(Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.4),
                blurRadius: 6,
                spreadRadius: 1,
              ),
            ],
          ),
          child: const Icon(Icons.circle, color: Colors.white, size: 10),
        ),
        Container(width: 2, height: 8, color: color),
      ],
    );
  }

  Widget _routePoint(
      IconData icon, Color color, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: color, size: 16),
        const SizedBox(width: 6),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF888070),
                  fontSize: 9,
                  fontFamily: 'Courier New',
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 12,
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}