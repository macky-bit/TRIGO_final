import 'package:flutter/material.dart';

class RecentTrips extends StatelessWidget {
  const RecentTrips({super.key});

  static const Color _cardBg  = Color(0xFF182628);
  static const Color _accent  = Color(0xFFF5A623);
  static const Color _cream   = Color(0xFFF5F0E8);  // keep same
  static const Color _label   = Color(0xFF7AABB0);
  static const Color _divider = Color(0xFF1F3538);

  final List<Map<String, String>> _trips = const [
    {'title': 'Ride to SM Baguio',    'subtitle': 'Today - ₱80.00'},
    {'title': 'Ride to Burnham Park', 'subtitle': 'Yesterday - ₱70.00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Trips',
          style: TextStyle(
            color: _cream,
            fontSize: 17,
            fontFamily: 'Georgia',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            color: _cardBg,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: _divider, width: 1),
          ),
          child: Column(
            children: List.generate(_trips.length, (i) {
              final trip = _trips[i];
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Row(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              color: _accent.withValues(alpha: 0.12),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.electric_rickshaw,
                              color: _accent,
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  trip['title']!,
                                  style: TextStyle(
                                    color: _cream,
                                    fontSize: 13,
                                    fontFamily: 'Georgia',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  trip['subtitle']!,
                                  style: TextStyle(
                                    color: _label,
                                    fontSize: 11,
                                    fontFamily: 'Courier New',
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.chevron_right, color: _label, size: 18),
                        ],
                      ),
                    ),
                  ),
                  if (i < _trips.length - 1)
                    Divider(color: _divider, height: 1,
                        indent: 16, endIndent: 16),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}