import 'package:flutter/material.dart';

class MapPreview extends StatelessWidget {
  const MapPreview({super.key});

  static const Color _cardBg = Color(0xFF252B3B);
  static const Color _green  = Color(0xFF4CAF50);
  static const Color _road   = Color(0xFFE8D44D);
  static const Color _mapBg  = Color(0xFFD4E8C2);
  static const Color _block  = Color(0xFFBFD4A8);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFF2E3548), width: 1),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          // Map background
          Container(color: _mapBg),

          // Road horizontal
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Container(height: 36, color: _road.withValues(alpha: 0.85)),
          ),

          // Road vertical
          Positioned(
            top: 0,
            bottom: 0,
            left: 160,
            child: Container(width: 28, color: _road.withValues(alpha: 0.85)),
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
                    color: _green,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: _green.withValues(alpha: 0.5),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: const Icon(Icons.location_on, color: Colors.white, size: 18),
                ),
                Container(
                  width: 2,
                  height: 10,
                  color: _green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildBlocks() {
    final positions = [
      [10.0, 10.0, 100.0, 55.0],
      [120.0, 10.0, 30.0, 55.0],
      [200.0, 10.0, 100.0, 55.0],
      [10.0, 112.0, 90.0, 60.0],
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
          color: Color(0xFF2E7D32),
          borderRadius: BorderRadius.circular(6),
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