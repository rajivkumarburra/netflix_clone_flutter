import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';
import 'screens/email_screen.dart';
import 'screens/password_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/download_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        fontFamily: 'Inter',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          unselectedLabelStyle: TextStyle(color: Colors.white38),
        ),
      ),
      title: 'Flutter Demo',
      home: const WelcomeScreen(),
      routes: {
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
        EmailScreen.routeName: (context) => const EmailScreen(),
        PasswordScreen.routeName: (context) => const PasswordScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        DownloadScreen.routeName: (context) => const DownloadScreen(),
      },
    );
  }
}
