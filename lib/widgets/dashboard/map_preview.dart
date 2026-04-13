import 'package:flutter/material.dart';

class MapPreview extends StatelessWidget {
  const MapPreview({super.key});

  static const Color _cardBg = Color(0xFF252525);
  static const Color _accent = Color(0xFFB87333);
  static const Color _road   = Color(0xFFCCC5B5);
  static const Color _mapBg  = Color(0xFF2E2A24);
  static const Color _block  = Color(0xFF333028);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFF2E2A24), width: 1),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Container(color: _mapBg),

          // Road horizontal
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Container(height: 36, color: _road.withValues(alpha: 0.3)),
          ),

          // Road vertical
          Positioned(
            top: 0,
            bottom: 0,
            left: 160,
            child: Container(width: 28, color: _road.withValues(alpha: 0.3)),
          ),

          // City blocks
          ..._buildBlocks(),

          // Tricycle icons
          _tricycle(left: 55,  top: 55),
          _tricycle(left: 40,  top: 100),
          _tricycle(left: 230, top: 80),

          // Location pin
          Positioned(
            left: 145,
            top: 45,
            child: Column(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: _accent,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: _accent.withValues(alpha: 0.4),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.location_on,
                    color: Color(0xFF1A1A1A),
                    size: 18,
                  ),
                ),
                Container(width: 2, height: 10, color: _accent),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildBlocks() {
    final positions = [
      [10.0,  10.0,  100.0, 55.0],
      [120.0, 10.0,  30.0,  55.0],
      [200.0, 10.0,  100.0, 55.0],
      [10.0,  112.0, 90.0,  60.0],
      [200.0, 112.0, 110.0, 60.0],
    ];
    return positions.map((p) => Positioned(
      left: p[0], top: p[1],
      child: Container(
        width: p[2], height: p[3],
        decoration: BoxDecoration(
          color: _block,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    )).toList();
  }

  Widget _tricycle({required double left, required double top}) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: 36,
        height: 28,
        decoration: BoxDecoration(
          color: Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Color(0xFFB87333), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              blurRadius: 4,
              offset: const Offset(1, 2),
            ),
          ],
        ),
        child: const Center(
          child: Text('🛺', style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}