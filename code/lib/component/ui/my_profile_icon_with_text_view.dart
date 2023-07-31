import 'package:flutter/material.dart';
import 'package:frontend_test/component/ui/my_image_view.dart';
import 'package:frontend_test/component/widget/my_button_widget.dart';
import 'package:frontend_test/component/widget/my_icon_widget.dart';
import 'package:frontend_test/component/widget/my_text_widget.dart';
import 'package:frontend_test/helper/color.dart';
import 'package:frontend_test/helper/margin.dart';
import 'package:frontend_test/helper/string.dart';

import 'my_dot_view.dart';
import 'my_icon_with_text_view.dart';

class MyProfileIconWithTextView extends StatelessWidget {
  dynamic profileImage;
  String userName;
  String userStatus1;
  String userStatus2;
  String? userCheckText;
  dynamic userCheckIconData;

  String? rightButtonText;

  CrossAxisAlignment? align;

  MyProfileIconWithTextView({
    super.key,
    required this.userName,
    this.profileImage,
    this.userStatus1 = "",
    this.userStatus2 = "",
    this.userCheckIconData,
    this.userCheckText = "",
    this.rightButtonText = "",
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 10.0),
            child: MyImageView(
              imagePathOrData: profileImage,
              height: heightProfileImage,
              padding: 0,
            )),
        Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                MyTextWidget(
                  text: userName,
                  fontWeight: FontWeight.w700,
                  color: blackTextTitleColor,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                userStatus1.isNotEmpty
                    ? Row(children: [
                        MyTextWidget(
                          text: userStatus1,
                          color: lightGreyTextColor,
                          size: 11,
                        ),
                        const MyDotView(),
                        MyTextWidget(
                          text: userStatus2,
                          color: lightGreyTextColor,
                          size: 11,
                        ),
                      ])
                    : Container()
              ],
            )),
        const SizedBox(
          width: 5.0,
        ),
        Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: MyIconWithTextView(
              iconData: userCheckIconData,
              text: userCheckText,
              align: align,
            )),
        const Spacer(),
        rightButtonText!.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: MyButtonWidget(
                  onChanged: (int value) {},
                  text: rightButtonText!,
                ))
            : Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: MyIconWithTextView(iconData: "dots.png"))
      ],
    );
  }
}
