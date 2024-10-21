import 'package:book_worm/utils/colors.dart';
import 'package:flutter/material.dart';

class PostAction extends StatefulWidget {
  const PostAction({super.key, required this.iconData, required this.count});
  final IconData iconData;
  final String count;

  @override
  State<PostAction> createState() => _PostActionState();
}

class _PostActionState extends State<PostAction> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          PostActionIcon(iconData: widget.iconData),
          Text(widget.count)
        ],
      ),
    );
  }
}

class PostActionIcon extends StatelessWidget {
  const PostActionIcon({
    super.key,
    required this.iconData,
  });

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Icon ');
      },
      highlightColor: AppColor.kLightGreen,
      splashFactory: InkSparkle.splashFactory,
      child: Icon(
        iconData,
        color: AppColor.kDarkGrey,
        size: 30,
        weight: 2,
      ),
    );
  }
}
