import 'package:flutter/material.dart';
import 'package:frontend_test/component/ui/my_icon_with_text_view.dart';
import 'package:frontend_test/component/ui/my_profile_icon_with_text_view.dart';
import 'package:frontend_test/component/widget/my_text_widget.dart';
import 'package:frontend_test/helper/color.dart';
import 'package:frontend_test/helper/string.dart';

import 'my_user_actions_view.dart';

class MyUserCommentsView extends StatelessWidget {
  MyUserCommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //main_comment
        _userComment(
            "profile.png",
            user_1_name,
            user_1_check_text,
            "green_check_2.png",
            user_post_des_2,
            [5, 5],
            ["heart.png", "comment.png"]),
        const SizedBox(
          height: 20,
        ),

        ///other_comments
        Padding(
            padding: const EdgeInsets.only(left: 50.0, bottom: 20.0),
            child: _userComment("profile_second.png", user_2_name,
                user_1_check_text, "", user_post_des_2, [5], ["heart.png"])),
      ],
    );
  }

  Widget _userComment(
    String profileImage,
    String userName,
    String userCheckText,
    String userCheckIconData,
    String userDes,
    List<int> countList,
    List<String> iconName,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: MyProfileIconWithTextView(
              profileImage: profileImage,
              userName: userName,
              userCheckText: userCheckText,
              userCheckIconData: userCheckIconData,
              align: CrossAxisAlignment.center,
            )),
        const SizedBox(
          height: 5,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 70.0, right: 20.0),
            child: MyTextWidget(
              text: userDes,
              color: blackTextDesColor,
              maxLine: 7,
            )),
        const SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 20.0),
            child: MyUserActionsView(
              countList: countList,
              iconName: iconName,
            )),
      ],
    );
  }
}
