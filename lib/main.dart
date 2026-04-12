import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const TriGo());
}

class TriGo extends StatelessWidget {
  const TriGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TriGo Bank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Georgia',
        scaffoldBackgroundColor: const Color(0xFFF5F0E8),
      ),
      home: const LoginScreen(),
    );
  }
}