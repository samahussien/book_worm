import 'package:flutter/material.dart';

TabBar homeBottomAppBar({required TabController tabController})=>  TabBar(
        controller: tabController,
        onTap: (value){},
        
        tabs: const [
          Tab(text:"For You",),
          Tab(text:"Community"),
     
        ],
      );