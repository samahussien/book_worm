  import 'package:flutter/material.dart';

AnimatedBuilder animationObject({required Animation<Offset> slidingAnimation,required Widget object}){
  return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, child) => SlideTransition(
            position: slidingAnimation,
            child: object));
}

