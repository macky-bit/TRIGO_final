import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class HeaderPanel extends StatelessWidget {
  const HeaderPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppTheme.darkBg,
      child: Stack(
        children: [
          // Decorative outer circle
          Positioned(
            bottom: -40,
            right: -40,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0x12FFFFFF), // white 7%
                  width: 36,
                ),
              ),
            ),
          ),
          // Decorative inner circle
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0x0FFFFFFF),
                  width: 18,
                ),
              ),
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 64, 28, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PHIL. 2026', style: AppTheme.philLabel),
                const SizedBox(height: 10),
                Text('TriGO', style: AppTheme.bankName),
                const SizedBox(height: 16),
                Text(
                  'TriGo is a digital application designed to improve the tricycle transportation system by providing a standardized and transparent fare mechanism while also supporting local tourism.',
                  style: AppTheme.tagline,
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text('v1.0.0', style: AppTheme.versionTag),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text('·', style: AppTheme.versionTag),
                    ),
                    Text('Secure Connection', style: AppTheme.versionTag),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}