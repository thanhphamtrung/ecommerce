import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Animation'),
        const Text('eCommerce mobile app'),
        Image.asset('assets/images/intro-bg.png'),
        const Text(
            'A one-stop online shop for all of your needs. Buy the latest products from popular brands!'),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_forward_sharp),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Skip'),
        )
      ],
    );
  }
}
