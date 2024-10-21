import 'package:book_worm/features/home/presentation/views/for_you_widgets/post_actions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Interactions(),
          BasicActions(),
        ],
      ),
    );
  }
}

class BasicActions extends StatelessWidget {
  const BasicActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: PostActionIcon(iconData: FontAwesomeIcons.bookmark),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: PostActionIcon(iconData: FontAwesomeIcons.shareNodes),
        ),
      ],
    );
  }
}

class Interactions extends StatelessWidget {
  const Interactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // IconButton(onPressed:(){},icon: Icon(FontAwesomeIcons.heart,color: AppColor.kDarkGrey,size: 30,weight: 2,),alignment: Alignment.center,),
        PostAction(
          iconData: FontAwesomeIcons.heart,
          count: "30 k",
        ),
        PostAction(iconData: FontAwesomeIcons.comment, count: "2K"),
        PostAction(iconData: FontAwesomeIcons.share, count: "300")
      ],
    );
  }
}
