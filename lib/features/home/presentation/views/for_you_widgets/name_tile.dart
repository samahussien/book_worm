import 'package:book_worm/utils/assets.dart';
import 'package:book_worm/utils/colors.dart';
import 'package:flutter/material.dart';

class NameTile extends StatelessWidget {
  const NameTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage(AppAssets.logoWorm),
          ),
          contentPadding: const EdgeInsets.all(0),
          title: const Text(
            "sama hussien",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: AppColor.kDarkGrey),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: AppColor.kDarkGrey,
                size: 30,
                weight: 2,
              ))),
    );
  }
}
