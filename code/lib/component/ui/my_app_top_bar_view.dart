import 'package:flutter/material.dart';
import 'package:frontend_test/component/widget/my_icon_widget.dart';
import 'package:frontend_test/component/widget/my_text_widget.dart';
import 'package:frontend_test/helper/margin.dart';

class MyAppTopBarView extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final String? leftIcon;
  final Function()? leftIconClick;
  final String? rightIcon;
  final Function()? rightIconClick;
  final String title;

  MyAppTopBarView({
    super.key,
    required this.context,
    this.title = "Title",
    this.leftIcon,
    this.leftIconClick,
    this.rightIcon,
    this.rightIconClick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
              onTap: () {},
              child: MyIconWidget(
                iconData: leftIcon ?? "back_arrow.png",
                padding: 5.0,
              ))),
      MyTextWidget(
        text: title,
        fontWeight: FontWeight.w700,
      ),
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
              onTap: () {},
              child: MyIconWidget(
                iconData: leftIcon ?? "notification_bell.png",
                padding: 5.0,
              ))),
    ]);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => appBar;
}
