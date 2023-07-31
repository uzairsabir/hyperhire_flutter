import 'package:flutter/material.dart';
import 'package:frontend_test/helper/color.dart';

class MyTextWidget extends StatelessWidget {
  String text;
  Color color;
  double size;
  FontWeight fontWeight;
  int maxLine;
  MyTextWidget(
      {super.key,
      required this.text,
      this.color = blackTextTitleColor,
      this.size = 13,
      this.fontWeight = FontWeight.normal,
      this.maxLine = 1});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: 'NotoSans-Regular',
          fontWeight: fontWeight),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      softWrap: true,
    );
  }
}
