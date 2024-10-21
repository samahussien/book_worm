import 'package:book_worm/features/home/presentation/views/community_view.dart';
import 'package:book_worm/features/home/presentation/views/for_you_view.dart';
import 'package:flutter/material.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
        controller: tabController,
        children:  const [ForYouView(), CommunityView()]);
  }
}
