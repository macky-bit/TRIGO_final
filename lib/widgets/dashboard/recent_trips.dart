import 'package:flutter/material.dart';

class RecentTrips extends StatelessWidget {
  const RecentTrips({super.key});

  static const Color _cardBg   = Color(0xFF252B3B);
  static const Color _textMain = Color(0xFFFFFFFF);
  static const Color _textSub  = Color(0xFFB0B8CC);
  static const Color _divider  = Color(0xFF2E3548);

  final List<Map<String, String>> _trips = const [
    {'title': 'Ride to SM Baguio',     'subtitle': 'Today - ₱80.00'},
    {'title': 'Ride to Burnham Park',  'subtitle': 'Yesterday - ₱70.00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Trips',
          style: TextStyle(
            color: _textMain,
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  trip['title']!,
                                  style: TextStyle(
                                    color: _textMain,
                                    fontSize: 14,
                                    fontFamily: 'Georgia',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  trip['subtitle']!,
                                  style: TextStyle(
                                    color: _textSub,
                                    fontSize: 12,
                                    fontFamily: 'Courier New',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: _textSub,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (i < _trips.length - 1)
                    Divider(
                      color: _divider,
                      height: 1,
                      indent: 16,
                      endIndent: 16,
                    ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}