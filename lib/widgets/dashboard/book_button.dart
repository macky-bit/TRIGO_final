import 'package:flutter/material.dart';

class BookButton extends StatefulWidget {
  const BookButton({super.key});

  @override
  State<BookButton> createState() => _BookButtonState();
}

class _BookButtonState extends State<BookButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _scale = Tween<double>(begin: 1.0, end: 0.97).animate(_ctrl);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _ctrl.forward(),
      onTapUp: (_) => _ctrl.reverse(),
      onTapCancel: () => _ctrl.reverse(),
      onTap: () {},
      child: ScaleTransition(
        scale: _scale,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFB87333).withValues(alpha: 0.25),
                blurRadius: 16,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'BOOK A TRICYCLE',
              style: TextStyle(
                color: Color(0xFFCCC5B5),
                fontSize: 15,
                fontFamily: 'Courier New',
                fontWeight: FontWeight.w800,
                letterSpacing: 4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}