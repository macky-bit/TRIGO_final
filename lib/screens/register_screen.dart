import 'package:flutter/material.dart';
import '../widgets/register_form_panel.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: RegisterFormPanel(),
        ),
      ),
    );
  }
}