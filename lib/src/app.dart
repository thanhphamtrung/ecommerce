import 'package:e_commerce/src/presentation/pages/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Josefin',
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xFFfc5130),
            foregroundColor: Colors.white,
            iconSize: 16.0),
        colorScheme: const ColorScheme(
          primary: Color(0xFF171717),
          secondary: Color(0x0064d2ff),
          surface: Colors.purpleAccent,
          background: Color(0xFFFFFFFF),
          error: Color(0xFFFFFFFF),
          onPrimary: Colors.red,
          onSecondary: Colors.deepOrange,
          onSurface: Color(0xFFFFFFFF),
          onBackground: Color(0xFFFFFFFF),
          onError: Colors.redAccent,
          brightness: Brightness.light,
        ),
      ),
      home: const SafeArea(
        child: Scaffold(
          body: OnboardingPage(),
        ),
      ),
    );
  }
}
