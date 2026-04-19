import 'package:flutter/material.dart';

class DriverStatusToggle extends StatelessWidget {
  final bool isOnline;
  final ValueChanged<bool> onToggle;

  const DriverStatusToggle({
    super.key,
    required this.isOnline,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
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
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: isOnline
                  ? const Color(0xFF4CAF50).withValues(alpha: 0.12)
                  : const Color(0xFF888070).withValues(alpha: 0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(
              isOnline
                  ? Icons.electric_rickshaw
                  : Icons.electric_rickshaw_outlined,
              color: isOnline
                  ? const Color(0xFF4CAF50)
                  : const Color(0xFF888070),
              size: 22,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isOnline ? 'YOU ARE ONLINE' : 'YOU ARE OFFLINE',
                  style: TextStyle(
                    color: isOnline
                        ? const Color(0xFF4CAF50)
                        : const Color(0xFF888070),
                    fontSize: 10,
                    fontFamily: 'Courier New',
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  isOnline
                      ? 'Accepting ride requests'
                      : 'Not accepting requests',
                  style: const TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 13,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Switch(
            value: isOnline,
            onChanged: onToggle,
            activeColor: const Color(0xFF4CAF50),
            inactiveThumbColor: const Color(0xFF888070),
            inactiveTrackColor: const Color(0xFFCCC5B5),
          ),
        ],
      ),
    );
  }
}