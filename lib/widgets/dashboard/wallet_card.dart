import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  static const Color _cardBg = Color(0xFF252525);
  static const Color _accent = Color(0xFFB87333);
  static const Color _cream  = Color(0xFFF5F0E8);
  static const Color _label  = Color(0xFF888070);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFF2E2A24), width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'WALLET BALANCE',
                  style: TextStyle(
                    color: _accent,
                    fontSize: 10,
                    fontFamily: 'Courier New',
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '₱250.00',
                  style: TextStyle(
                    color: _cream,
                    fontSize: 28,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              decoration: BoxDecoration(
                color: _accent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Add Funds',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 12,
                  fontFamily: 'Courier New',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}