import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../screens/register_screen.dart';
import 'continue_button.dart';
import '../screens/dashboard_screen.dart';

class FormPanel extends StatefulWidget {
  const FormPanel({super.key});

  @override
  State<FormPanel> createState() => _FormPanelState();
}


class _FormPanelState extends State<FormPanel> {
  final _emailController    = TextEditingController();
  final _passwordController = TextEditingController();
  bool _keepSignedIn    = false;
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppTheme.cream,
      padding: const EdgeInsets.fromLTRB(28, 36, 28, 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('WELCOME BACK', style: AppTheme.welcomeLabel),
          const SizedBox(height: 10),
          Text('Sign in to\nyour account', style: AppTheme.heading),
          const SizedBox(height: 36),
          Text('EMAIL ADDRESS', style: AppTheme.fieldLabel),
          const SizedBox(height: 8),
          _buildTextField(
            controller: _emailController,
            hint: 'you@example.com',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 22),
          Text('PASSWORD', style: AppTheme.fieldLabel),
          const SizedBox(height: 8),
          _buildTextField(
            controller: _passwordController,
            hint: '••••••••',
            isPassword: true,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 18,
                    height: 18,
                    child: Checkbox(
                      value: _keepSignedIn,
                      onChanged: (v) =>
                          setState(() => _keepSignedIn = v ?? false),
                      activeColor: AppTheme.darkBg,
                      side: const BorderSide(color: AppTheme.border, width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text('KEEP ME SIGNED IN', style: AppTheme.fieldLabel),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: AppTheme.darkBg,
                    fontSize: 12,
                    fontFamily: 'Georgia',
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0x661A1A1A),
                  ),
                ),
              
              ),
            ],
          ),
          const SizedBox(height: 28),
          ContinueButton(onPressed: _handleLogin),
          const SizedBox(height: 28),
          Row(
            children: [
              const Expanded(child: Divider(color: AppTheme.border, thickness: 1)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text('OR', style: AppTheme.orDivider),
              ),
              const Expanded(child: Divider(color: AppTheme.border, thickness: 1)),
            ],
          ),
          const SizedBox(height: 24),
          Center(
            child: GestureDetector(
              onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => RegisterScreen()),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Don't have an account?  ", style: AppTheme.createAccount),
                  TextSpan(text: 'Create one', style: AppTheme.createAccountLink),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    TextInputType? keyboardType,
    bool isPassword = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword ? _obscurePassword : false,
      keyboardType: keyboardType,
      style: AppTheme.fieldInput,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppTheme.fieldInput.copyWith(color: Color(0x4D1A1A1A)),
        suffixIcon: isPassword
            ? GestureDetector(
                onTap: () => setState(() => _obscurePassword = !_obscurePassword),
                child: Icon(
                  _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  color: AppTheme.label,
                  size: 18,
                ),
              )
            : null,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppTheme.border, width: 1.2),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppTheme.darkBg, width: 1.5),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        isDense: true,
      ),
    );
  }

  void _handleLogin() {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (_) => DashboardScreen()),
  );
}
}