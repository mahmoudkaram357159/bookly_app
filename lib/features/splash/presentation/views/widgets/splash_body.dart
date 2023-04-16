import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/animated_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'animated_photo.dart';

class SplashBodyScreen extends StatefulWidget {
  const SplashBodyScreen({super.key});

  @override
  State<SplashBodyScreen> createState() => _SplashBodyScreenState();
}

class _SplashBodyScreenState extends State<SplashBodyScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController animationController2;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimation2;
  @override
  void initState() {
    super.initState();

    initSlideAnimation1();
    initSlideAnimation2();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(() => const HomeScreen(), transition: Transition.fadeIn);
      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
    animationController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedPicture(slidingAnimation2: slidingAnimation2),
        const SizedBox(
          height: 15.0,
        ),
        AnimatedText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlideAnimation2() {
    animationController2 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation2 =
        Tween<Offset>(begin: const Offset(0.0, -4), end: Offset.zero)
            .animate(animationController2);

    animationController2.forward();
  }

  void initSlideAnimation1() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0.0, 4), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }
}
