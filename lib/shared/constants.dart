import 'package:book_worm/utils/colors.dart';
import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key, this.fontSize = 25,this.stroke=4});
  final double fontSize;
  final double stroke;
  @override
  Widget build(BuildContext context) {
    return Text(
      "Book worm",
      textAlign: TextAlign.center,
      style:TextStyle(
      fontFamily: "oi",
      fontSize: fontSize,
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = stroke
        ..color = AppColor.kDarkGreen)
    );
  }
}

