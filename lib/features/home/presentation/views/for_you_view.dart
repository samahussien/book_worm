import 'package:book_worm/features/home/presentation/views/for_you_widgets/action_bar.dart';
import 'package:book_worm/features/home/presentation/views/for_you_widgets/description.dart';
import 'package:book_worm/features/home/presentation/views/for_you_widgets/name_tile.dart';
import 'package:book_worm/features/home/presentation/views/for_you_widgets/post_card.dart';
import 'package:flutter/material.dart';

class ForYouView extends StatelessWidget {
  const ForYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 5), child: Post());
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const NameTile(),
        const Discription(),
        PostCard(width: width),
        const ActionBar(),
      ],
    );
  }
}
