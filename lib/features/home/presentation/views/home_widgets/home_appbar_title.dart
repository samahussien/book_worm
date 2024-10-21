import 'package:book_worm/shared/constants.dart';
import 'package:book_worm/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeAppbarTitle extends StatelessWidget {
  const HomeAppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.logoWorm,
          fit: BoxFit.cover,
          width: 50,
          alignment: Alignment.center,
        ),
        const LogoText(
          fontSize: 18,
          stroke: 2,
        )
      ],
    );
  }
}
