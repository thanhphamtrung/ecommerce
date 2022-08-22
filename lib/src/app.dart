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
      theme: ThemeData(fontFamily: 'Josefin'),
      home: const SafeArea(
        child: Scaffold(
          body: OnboardingPage(),
        ),
      ),
    );
  }
}
