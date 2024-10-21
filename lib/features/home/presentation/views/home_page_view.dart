import 'package:book_worm/features/home/presentation/views/home_widgets/home_appbar_actions.dart';
import 'package:book_worm/features/home/presentation/views/home_widgets/home_appbar_title.dart';
import 'package:book_worm/features/home/presentation/views/home_widgets/home_bottom_appbar.dart';
import 'package:book_worm/features/home/presentation/views/home_widgets/home_page_view_body.dart';
import 'package:book_worm/utils/colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController tabController;

 

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool bottomAppIsScrolled) {
          return <Widget>[
            SliverAppBar(
              // primary: true,
              backgroundColor: AppColor.kLightGreen,
              automaticallyImplyLeading: false,
              title: const HomeAppbarTitle(),
              bottom: homeBottomAppBar(tabController: tabController),
              actions: homeAppBarActions,
              pinned: true,
              forceElevated: bottomAppIsScrolled,
              floating: true,
            ),
          ];
        },
        body: HomePageViewBody(
          tabController: tabController,
        ),
      ),

      //   appBar:AppBar(
      //     primary: true,
      //   backgroundColor: AppColor.kLightGreen,
      //   automaticallyImplyLeading: false,
      //   title:HomeAppbarTitle() ,
      //    bottom:homeBottomAppBar(tabController: tabController),
      //   actions:homeAppBarActions
      // ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
