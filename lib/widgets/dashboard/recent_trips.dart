import 'package:flutter/material.dart';

class RecentTrips extends StatelessWidget {
  const RecentTrips({super.key});

  static const Color _cardBg  = Color(0xFFFFFFFF);
  static const Color _accent  = Color(0xFF90EE90);
  static const Color _dark    = Color(0xFF1A1A1A);
  static const Color _label   = Color(0xFF888070);
  static const Color _divider = Color(0xFFECE8E0);

  final List<Map<String, String>> _trips = const [
    {'title': 'Ride to SM San Fernando',    'subtitle': 'Today - ₱80.00'},
    {'title': 'Ride to San Fernando Town', 'subtitle': 'Yesterday - ₱70.00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Trips',
          style: TextStyle(
            color: _dark,
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
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.06),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
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
                              color: _accent.withValues(alpha: 0.10),
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
                                    color: _dark,
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