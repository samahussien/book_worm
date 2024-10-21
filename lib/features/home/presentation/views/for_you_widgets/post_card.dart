import 'package:book_worm/utils/assets.dart';
import 'package:book_worm/utils/colors.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: AppColor.kLightGrey,
      child: Container(
        width: width,
        height: 220,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppAssets.logoWorm))),
      ),
    );
  }
}
