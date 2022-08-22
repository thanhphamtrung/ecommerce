import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 50.0,
      ),
      child: Column(
        children: [
          Text(
            'Animation',
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            'eCommerce mobile app',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Image.asset('assets/images/intro-bg.png'),
          Text(
            'A one-stop online shop for all of your needs. Buy the latest products from popular brands!',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.arrow_forward_sharp),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Skip'),
          )
        ],
      ),
    );
  }
}
