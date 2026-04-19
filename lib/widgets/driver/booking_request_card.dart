import 'package:flutter/material.dart';

class BookingRequestCard extends StatefulWidget {
  final VoidCallback onAccept;
  final VoidCallback onDecline;

  const BookingRequestCard({
    super.key,
    required this.onAccept,
    required this.onDecline,
  });

  @override
  State<BookingRequestCard> createState() => _BookingRequestCardState();
}

class _BookingRequestCardState extends State<BookingRequestCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _pulseCtrl;
  late Animation<double> _pulse;

  @override
  void initState() {
    super.initState();
    _pulseCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);
    _pulse = Tween<double>(begin: 0.95, end: 1.0).animate(
      CurvedAnimation(parent: _pulseCtrl, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _pulseCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _pulse,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFF00CEC8).withValues(alpha: 0.5),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF00CEC8).withValues(alpha: 0.12),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF0D98BA).withValues(alpha: 0.08),
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(14)),
              ),
              child: Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Color(0xFF0D98BA),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'NEW BOOKING REQUEST',
                    style: TextStyle(
                      color: Color(0xFF0D98BA),
                      fontSize: 10,
                      fontFamily: 'Courier New',
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Just now',
                    style: TextStyle(
                      color: Color(0xFF888070),
                      fontSize: 10,
                      fontFamily: 'Courier New',
                    ),
                  ),
                ],
              ),
            ),

            // Passenger info
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0D98BA).withValues(alpha: 0.10),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF0D98BA),
                            width: 1.5,
                          ),
                        ),
                        child: const Icon(
                          Icons.person_rounded,
                          color: Color(0xFF0D98BA),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mark Manzano',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 15,
                                fontFamily: 'Georgia',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Color(0xFFB87333), size: 12),
                                const SizedBox(width: 3),
                                Text(
                                  '4.8 rating · 12 trips',
                                  style: TextStyle(
                                    color: Color(0xFF888070),
                                    fontSize: 11,
                                    fontFamily: 'Courier New',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '₱85.00',
                            style: TextStyle(
                              color: Color(0xFF4CAF50),
                              fontSize: 18,
                              fontFamily: 'Georgia',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'FARE',
                            style: TextStyle(
                              color: Color(0xFF888070),
                              fontSize: 9,
                              fontFamily: 'Courier New',
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Divider(color: Color(0xFFECE8E0), height: 1),
                  const SizedBox(height: 14),

                  // Pickup and dropoff
                  _locationRow(
                    Icons.my_location_rounded,
                    const Color(0xFF4CAF50),
                    'PICKUP',
                    'Sagayad, San Fernando City',
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: List.generate(3, (i) => Container(
                        width: 2,
                        height: 4,
                        margin: const EdgeInsets.only(bottom: 3),
                        color: const Color(0xFFCCC5B5),
                      )),
                    ),
                  ),
                  const SizedBox(height: 4),
                  _locationRow(
                    Icons.location_on_rounded,
                    const Color(0xFF0D98BA),
                    'DROP OFF',
                    'SM City San Fernando City,',
                  ),
                  const SizedBox(height: 4),

                  // Distance and time
                  Row(
                    children: [
                      const SizedBox(width: 26),
                      _chip(Icons.route_outlined, '2.4 km'),
                      const SizedBox(width: 8),
                      _chip(Icons.access_time_rounded, '~8 mins'),
                    ],
                  ),
                ],
              ),
            ),

            // Accept / Decline buttons
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Row(
                children: [
                  // Decline
                  Expanded(
                    child: GestureDetector(
                      onTap: widget.onDecline,
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF0F0),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFFE53935).withValues(alpha: 0.3),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.close_rounded,
                                color: Color(0xFFE53935), size: 18),
                            SizedBox(width: 6),
                            Text(
                              'DECLINE',
                              style: TextStyle(
                                color: Color(0xFFE53935),
                                fontSize: 11,
                                fontFamily: 'Courier New',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Accept
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: widget.onAccept,
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A1A1A),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.check_rounded,
                                color: Color(0xFF4CAF50), size: 18),
                            SizedBox(width: 6),
                            Text(
                              'ACCEPT BOOKING',
                              style: TextStyle(
                                color: Color(0xFF4CAF50),
                                fontSize: 11,
                                fontFamily: 'Courier New',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _locationRow(
      IconData icon, Color iconColor, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 18),
        const SizedBox(width: 8),
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

  Widget _chip(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F0E8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF888070), size: 11),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF888070),
              fontSize: 10,
              fontFamily: 'Courier New',
            ),
          ),
        ],
      ),
    );
  }
}