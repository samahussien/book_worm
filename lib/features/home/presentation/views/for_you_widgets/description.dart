import 'package:flutter/material.dart';
import 'package:hashtagable/widgets/hashtag_text.dart';

class Discription extends StatefulWidget {
  const Discription({super.key});

  @override
  State<Discription> createState() => _DiscriptionState();
}

class _DiscriptionState extends State<Discription> {
      bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return    Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                  print(_isExpanded);
                });
              },
              child: HashTagText(
                text:
                    "hi readers!welcome to your books world !!lets start \n share your books , qoutes  and your spiritual momments.  #Welcome to #hashtagable This is #ReadOnlyText",
                basicStyle: const TextStyle(fontSize: 15, color: Colors.black),
                decoratedStyle: const TextStyle(fontSize: 15, color: Colors.red),
                maxLines:_isExpanded?null: 3,
                overflow:_isExpanded?TextOverflow.visible: TextOverflow.ellipsis,
               
              ),
            ),
          );
  }
}