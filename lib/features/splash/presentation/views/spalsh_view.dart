import 'package:book_worm/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:book_worm/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.kLightGreen,
      body: SplashViewBody(),
    );
  }
}
