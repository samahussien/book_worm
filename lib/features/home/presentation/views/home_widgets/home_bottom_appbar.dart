import 'package:book_worm/utils/colors.dart';
import 'package:flutter/material.dart';

TabBar homeBottomAppBar({required TabController tabController})=>  TabBar(
        controller: tabController,
        labelColor: AppColor.kDarkGreen,
        indicatorColor: AppColor.kDarkGreen,
        unselectedLabelColor: AppColor.kDarkGrey,
        
        onTap: (value){},
        
        tabs: const [
          Tab(text:"For You",),
          Tab(text:"Community"),
     
        ],
      );