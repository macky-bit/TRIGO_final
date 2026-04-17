import 'package:flutter/material.dart';

class TourismSearch extends StatelessWidget {
  const TourismSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF182628),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFF1F3538), width: 1),
      ),
      child: Row(
        children: [
          const SizedBox(width: 14),
          const Icon(Icons.search, color: Color(0xFF7AABB0), size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              style: const TextStyle(
                color: Color(0xFFF5F0E8),
                fontFamily: 'Courier New',
                fontSize: 13,
              ),
              decoration: InputDecoration(
                hintText: 'Search for places...',
                hintStyle: TextStyle(
                  color: Color(0xFF7AABB0),
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
              color: const Color(0xFF1F3538),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.location_on_outlined,
              color: Color(0xFFF5A623),
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}