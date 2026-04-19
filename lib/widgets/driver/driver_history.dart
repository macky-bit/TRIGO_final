import 'package:flutter/material.dart';

class DriverHistory extends StatelessWidget {
  const DriverHistory({super.key});

  static const List<Map<String, dynamic>> _history = [
    {
      'passenger': 'Mark Manzano',
      'from': 'Sagayad, San Fernando City',
      'to': 'DMMMSU, San Fernando City',
      'fare': '₱85.00',
      'time': '2:30 PM',
      'rating': 5,
    },
    {
      'passenger': 'Den Carlo',
      'from': 'Luna San Fernando City',
      'to': 'TOWN HALL, San Fernando City',
      'fare': '₱60.00',
      'time': '1:15 PM',
      'rating': 4,
    },
    {
      'passenger': 'Rasheed Borja',
      'from': 'Poro, San Fernando City',
      'to': 'SM City San Fernando City',
      'fare': '₱70.00',
      'time': '11:45 AM',
      'rating': 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Trip History',
              style: TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 17,
                fontFamily: 'Georgia',
                fontWeight: FontWeight.w700,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'See All',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 12,
                  fontFamily: 'Georgia',
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFF1A1A1A),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
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
            children: List.generate(_history.length, (i) {
              final trip = _history[i];
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0D98BA)
                                .withValues(alpha: 0.10),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.person_rounded,
                            color: Color(0xFF0D98BA),
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    trip['passenger'] as String,
                                    style: const TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 13,
                                      fontFamily: 'Georgia',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    trip['fare'] as String,
                                    style: const TextStyle(
                                      color: Color(0xFF4CAF50),
                                      fontSize: 13,
                                      fontFamily: 'Georgia',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 3),
                              Text(
                                '${trip['from']} → ${trip['to']}',
                                style: const TextStyle(
                                  color: Color(0xFF888070),
                                  fontSize: 11,
                                  fontFamily: 'Courier New',
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  ...List.generate(
                                    5,
                                    (s) => Icon(
                                      Icons.star_rounded,
                                      color: s < (trip['rating'] as int)
                                          ? const Color(0xFFB87333)
                                          : const Color(0xFFECE8E0),
                                      size: 12,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    trip['time'] as String,
                                    style: const TextStyle(
                                      color: Color(0xFF888070),
                                      fontSize: 10,
                                      fontFamily: 'Courier New',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (i < _history.length - 1)
                    const Divider(
                      color: Color(0xFFECE8E0),
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