import 'package:bookly_app/core/Utls/asset.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/home_view.dart';
import 'package:bookly_app/features/constant.dart';
import 'package:bookly_app/features/splash/presentation/view/Sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideanimation;

  @override
  void initState() {
    super.initState();

    InitSlidingAnimation();

    NavigateToHomeView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slideanimation: slideanimation),
      ],
    );
  }

  void InitSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slideanimation = Tween<Offset>(begin: const Offset(0, 11), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void NavigateToHomeView() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: Ktranistionduration);
    });
  }
}
