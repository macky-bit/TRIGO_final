import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ContinueButton extends StatefulWidget {
  final VoidCallback? onPressed;

  const ContinueButton({super.key, this.onPressed});

  @override
  State<ContinueButton> createState() => _ContinueButtonState();
}

class _ContinueButtonState extends State<ContinueButton>
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
      onTap: widget.onPressed,
      child: ScaleTransition(
        scale: _scale,
        child: Container(
          width: double.infinity,
          height: 52,
          color: AppTheme.darkBg,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('CONTINUE', style: AppTheme.continueBtn),
              const SizedBox(width: 10),
              const Text(
                '→',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}