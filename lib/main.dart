import 'package:flutter/material.dart';
import 'package:halli_mart/color_constants/app_theme.dart';
import 'package:halli_mart/screens/login/login_screen.dart';
import 'package:halli_mart/screens/splash_screen.dart/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HALLI MART',
      theme: AppThemes.lightTheme, // Use light theme
      darkTheme: AppThemes.darkTheme, // Use dark theme
      themeMode:
          ThemeMode.system, // Automatically switch based on system settings
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),

        // '/home': (context) => HomeScreen(),
      },
    );
  }
}
