import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class RegisterHeaderPanel extends StatelessWidget {
  const RegisterHeaderPanel({super.key});

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
                  color: Color(0x12FFFFFF),
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
                Text('TriGO', style: AppTheme.trigo),
                const SizedBox(height: 16),
                Text(
                  'Begin your journey with us today.',
                  style: TextStyle(
                    color: Color(0xCCF5F0E8),
                    fontSize: 15,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.w700,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 20),
                _bulletPoint('Full access to all features from day one, no credit card required.'),
                const SizedBox(height: 10),
                _bulletPoint('Your data is encrypted and never shared with third parties.'),
                const SizedBox(height: 10),
                _bulletPoint('Cancel or change your plan at any time, hassle-free.'),
                const SizedBox(height: 10),
                _bulletPoint('Dedicated support available around the clock.'),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text('v2.1.0', style: AppTheme.versionTag),
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

  Widget _bulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              color: AppTheme.accent,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: AppTheme.tagline,
          ),
        ),
      ],
    );
  }
}