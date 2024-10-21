import 'package:book_worm/utils/assets.dart';
import 'package:book_worm/utils/colors.dart';
import 'package:flutter/material.dart';

List<Widget> homeAppBarActions= [
        GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(Icons.notifications),
            )),
        GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(
                Icons.search,
                color: AppColor.kDarkGreen,
              ),
            )),
       
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CircleAvatar(
            child: Image.asset(AppAssets.logoWorm),
          ),
        )
      ];