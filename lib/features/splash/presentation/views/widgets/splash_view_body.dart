import 'package:book_worm/features/home/presentation/views/home_page_view.dart';
import 'package:book_worm/shared/constants.dart';
import 'package:book_worm/utils/animation.dart';
import 'package:book_worm/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> logoSlidingAnimation;
  late Animation<Offset> textSlidingAnimation;
  late AnimationController animationController;
  @override
  void initState() {
    initSlidingAnimation();

    navigateToHome();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          animationObject(
              slidingAnimation: logoSlidingAnimation,
              object: Image.asset(AppAssets.logoWorm,
                  width: 150, height: 100, fit: BoxFit.cover)),
          animationObject(
              slidingAnimation: textSlidingAnimation,
              object: const LogoText())
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    logoSlidingAnimation =
        Tween(begin: const Offset(0, -4), end: const Offset(0, 0))
            .animate(animationController);
    textSlidingAnimation =
        Tween(begin: const Offset(0, 4), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyHomePage()));
    });
  }
}
