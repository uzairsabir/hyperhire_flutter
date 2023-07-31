import 'package:flutter/material.dart';
import 'package:frontend_test/component/widget/my_icon_widget.dart';
import 'package:frontend_test/component/widget/my_text_widget.dart';
import 'package:frontend_test/helper/color.dart';

class MyIconWithTextView extends StatelessWidget {
  dynamic iconData;
  String? text;
  double? size;
  CrossAxisAlignment? align;

  MyIconWithTextView(
      {super.key, this.iconData, this.text, this.size, this.align});

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: align ?? CrossAxisAlignment.center,
        children: [
          iconData.isEmpty
              ? Container()
              : GestureDetector(
                  onTap: () {},
                  child: Image(
                      height: size ?? 20.0,
                      width: size ?? 20.0,
                      image: AssetImage('assets/icons/$iconData'))),
          const SizedBox(
            width: 5.0,
          ),
          text == null
              ? Container()
              : MyTextWidget(
                  text: text!,
                  color: lightGreyTextColor,
                  size: 11,
                )
        ]);
  }
}
