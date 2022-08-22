import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 50.0,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Animation',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'eCommerce mobile app',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Image.asset('assets/images/intro-bg.png'),
          ),
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                'A one-stop online shop for all of your needs. Buy the latest products from popular brands!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.topCenter,
              child: FloatingActionButton(
                onPressed: () {},
                child: const MobileAppAnimatedIcon(),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.topCenter,
              child: TextButton(
                onPressed: () {},
                child: const Text('Skip'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileAppAnimatedIcon extends StatefulWidget {
  const MobileAppAnimatedIcon({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileAppAnimatedIcon> createState() => _MobileAppAnimatedIconState();
}

class _MobileAppAnimatedIconState extends State<MobileAppAnimatedIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )
      ..forward()
      ..addListener(() {
        if (controller.isCompleted) {
          controller.repeat(reverse: true);
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
            offset: Offset(controller.value * 8, 0),
            child: const Icon(
              Icons.arrow_forward,
              size: 20,
            ));
      },
    );
  }
}
