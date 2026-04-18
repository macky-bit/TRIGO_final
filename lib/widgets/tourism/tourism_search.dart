import 'package:flutter/material.dart';

class TourismSearch extends StatelessWidget {
  const TourismSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 14),
          const Icon(Icons.search, color: Color(0xFF888070), size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontFamily: 'Courier New',
                fontSize: 13,
              ),
              decoration: InputDecoration(
                hintText: 'Search for places...',
                hintStyle: TextStyle(
                  color: Color(0xFFCCC5B5),
                  fontFamily: 'Courier New',
                  fontSize: 13,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A).withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.location_on_outlined,
              color: Color(0xFF1A1A1A),
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}