import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../screens/login_screen.dart';
import 'create_account_button.dart';

class RegisterFormPanel extends StatefulWidget {
  const RegisterFormPanel({super.key});

  @override
  State<RegisterFormPanel> createState() => _RegisterFormPanelState();
}

class _RegisterFormPanelState extends State<RegisterFormPanel> {
  final _firstNameController       = TextEditingController();
  final _lastNameController        = TextEditingController();
  final _emailController           = TextEditingController();
  final _passwordController        = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword            = true;
  bool _obscureConfirm             = true;
  bool _agreedToTerms              = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
          // Logo
          Center(
            child: Image.asset(
              'assets/images/TriGo.png',
              height: 120,
            ),
          ),
          const SizedBox(height: 32),

          Text('GET STARTED', style: AppTheme.welcomeLabel),
          const SizedBox(height: 10),
          Text('Create your\naccount', style: AppTheme.heading),
          const SizedBox(height: 36),

          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('FIRST NAME', style: AppTheme.fieldLabel),
                    const SizedBox(height: 8),
                    _buildTextField(
                        controller: _firstNameController, hint: 'Jane'),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('LAST NAME', style: AppTheme.fieldLabel),
                    const SizedBox(height: 8),
                    _buildTextField(
                        controller: _lastNameController, hint: 'Doe'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),

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
            hint: 'Min. 8 characters',
            isPassword: true,
            obscure: _obscurePassword,
            onToggle: () =>
                setState(() => _obscurePassword = !_obscurePassword),
          ),
          const SizedBox(height: 22),

          Text('CONFIRM PASSWORD', style: AppTheme.fieldLabel),
          const SizedBox(height: 8),
          _buildTextField(
            controller: _confirmPasswordController,
            hint: 'Re-enter password',
            isPassword: true,
            obscure: _obscureConfirm,
            onToggle: () => setState(() => _obscureConfirm = !_obscureConfirm),
          ),
          const SizedBox(height: 24),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 18,
                height: 18,
                child: Checkbox(
                  value: _agreedToTerms,
                  onChanged: (v) =>
                      setState(() => _agreedToTerms = v ?? false),
                  activeColor: AppTheme.darkBg,
                  side: const BorderSide(color: AppTheme.border, width: 1.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Courier New',
                      fontSize: 10,
                      color: AppTheme.label,
                      letterSpacing: 1.5,
                    ),
                    children: [
                      TextSpan(text: 'I AGREE TO THE '),
                      TextSpan(
                        text: 'TERMS OF SERVICE',
                        style: TextStyle(
                          color: AppTheme.accent,
                          decoration: TextDecoration.underline,
                          decorationColor: AppTheme.accent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: ' AND '),
                      TextSpan(
                        text: 'PRIVACY POLICY',
                        style: TextStyle(
                          color: AppTheme.accent,
                          decoration: TextDecoration.underline,
                          decorationColor: AppTheme.accent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),

          CreateAccountButton(onPressed: _handleRegister),
          const SizedBox(height: 28),

          Center(
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an account?  ',
                      style: AppTheme.createAccount,
                    ),
                    TextSpan(
                      text: 'Sign in',
                      style: AppTheme.createAccountLink,
                    ),
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
    bool obscure = false,
    VoidCallback? onToggle,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword ? obscure : false,
      keyboardType: keyboardType,
      style: AppTheme.fieldInput,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppTheme.fieldInput.copyWith(color: Color(0x4D1A1A1A)),
        suffixIcon: isPassword
            ? GestureDetector(
                onTap: onToggle,
                child: Icon(
                  obscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
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

  void _handleRegister() {
    debugPrint('First Name: ${_firstNameController.text}');
    debugPrint('Last Name: ${_lastNameController.text}');
    debugPrint('Email: ${_emailController.text}');
    debugPrint('Password: ${_passwordController.text}');
    debugPrint('Agreed to terms: $_agreedToTerms');
  }
}