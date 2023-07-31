import 'package:flutter/material.dart';
import 'package:frontend_test/component/widget/my_icon_widget.dart';
import 'package:frontend_test/component/widget/my_text_widget.dart';
import 'package:frontend_test/helper/color.dart';
import 'package:frontend_test/helper/string.dart';

class MyBottomChatView extends StatelessWidget {
  MyBottomChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyIconWidget(
          iconData: "image_view.png",
        ),
        const SizedBox(
          width: 10.0,
        ),
        MyTextWidget(
          text: chat_hint,
          color: lightGreyTextColor,
        ),
        const Spacer(),
        MyTextWidget(
          text: chat_send,
          color: lightGreyTextColor,
        )
      ],
    );
  }
}
