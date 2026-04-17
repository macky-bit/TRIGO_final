import 'package:flutter/material.dart';

class AppTheme {
  // Colors
  static const Color darkBg  = Color(0xFF111C1D);
  static const Color cream   = Color(0xFFF5F0E8);
  static const Color accent  = Color(0xFFF5A623);
  static const Color border  = Color(0xFF1F3538);
  static const Color label   = Color(0xFF7AABB0);

  // Text Styles
  static const TextStyle philLabel = TextStyle(
    color: accent,
    fontSize: 11,
    letterSpacing: 3,
    fontFamily: 'Courier New',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle trigo = TextStyle(
    color: cream,
    fontSize: 38,
    fontFamily: 'Georgia',
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
    height: 1.1,
  );

  static const TextStyle tagline = TextStyle(
    color: Color(0x73FFFFFF), // white 45%
    fontSize: 12.5,
    fontFamily: 'Courier New',
    height: 1.65,
    letterSpacing: 0.2,
  );

  static const TextStyle versionTag = TextStyle(
    color: Color(0x4DFFFFFF), // white 30%
    fontSize: 10,
    fontFamily: 'Courier New',
    letterSpacing: 1.5,
  );

  static const TextStyle welcomeLabel = TextStyle(
    color: accent,
    fontSize: 10,
    letterSpacing: 3.5,
    fontFamily: 'Courier New',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle heading = TextStyle(
    color: darkBg,
    fontSize: 32,
    fontFamily: 'Georgia',
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: -0.3,
  );

  static const TextStyle fieldLabel = TextStyle(
    color: label,
    fontSize: 10,
    letterSpacing: 2.5,
    fontFamily: 'Courier New',
  );

  static const TextStyle fieldInput = TextStyle(
    color: darkBg,
    fontFamily: 'Courier New',
    fontSize: 13.5,
    letterSpacing: 0.5,
  );

  static const TextStyle continueBtn = TextStyle(
    color: Colors.white,
    fontSize: 11,
    letterSpacing: 4,
    fontFamily: 'Courier New',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle orDivider = TextStyle(
    color: label,
    fontSize: 10,
    letterSpacing: 2,
    fontFamily: 'Courier New',
  );

  static const TextStyle createAccount = TextStyle(
    fontFamily: 'Courier New',
    fontSize: 12,
    color: label,
    letterSpacing: 0.5,
  );

  static const TextStyle createAccountLink = TextStyle(
    fontFamily: 'Courier New',
    fontSize: 12,
    color: accent,
    decoration: TextDecoration.underline,
    decorationColor: accent,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );
}