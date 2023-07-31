import 'package:flutter/material.dart';
import 'package:frontend_test/component/ui/my_app_top_bar_view.dart';
import 'package:frontend_test/component/ui/my_bottom_chat_view.dart';
import 'package:frontend_test/component/ui/my_divider.dart';
import 'package:frontend_test/component/ui/my_hash_tag_view.dart';
import 'package:frontend_test/component/ui/my_image_view.dart';
import 'package:frontend_test/component/ui/my_profile_icon_with_text_view.dart';
import 'package:frontend_test/component/ui/my_user_actions_view.dart';
import 'package:frontend_test/component/ui/my_user_comments_view.dart';
import 'package:frontend_test/component/widget/my_scroller_widget.dart';
import 'package:frontend_test/component/widget/my_text_widget.dart';
import 'package:frontend_test/helper/color.dart';
import 'package:frontend_test/helper/string.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppTopBarView(
          context: context,
          title: home_title,
        ),
        body: LayoutBuilder(builder: (context, constraint) {
          return Column(children: [
            Flexible(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: MyProfileIconWithTextView(
                              profileImage: "profile.png",
                              userName: user_1_name,
                              userStatus1: user_1_status_1,
                              userStatus2: user_1_status_2,
                              userCheckText: user_1_check_text,
                              userCheckIconData: "green_check_2.png",
                              rightButtonText: user_1_button_text,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: MyTextWidget(
                              text: user_post_title,
                              fontWeight: FontWeight.w700,
                              color: blackTextTitleColor,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: MyTextWidget(
                              text: user_post_des,
                              color: blackTextDesColor,
                              maxLine: 10,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: MyHashTagView(
                              hashList: const [
                                "2023",
                                "TODAYISMONDAY",
                                "TOP",
                                "POPS!",
                                "WOW",
                                "ROW",
                              ],
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        MyImageView(
                            width: double.infinity,
                            height: 400.0,
                            imagePathOrData:
                                "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg"),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: MyUserActionsView(
                              countList: const [5, 5, 0, 0],
                              iconName: const [
                                "heart.png",
                                "comment.png",
                                "bookmark.png",
                                "dots.png"
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        divider,
                        const SizedBox(
                          height: 10,
                        ),
                        MyUserCommentsView(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            divider,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyBottomChatView(),
            )
          ]);
        }));
  }
}
        
        
        
        
        
        
        
        
        
        
        
        
        //  Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     const SizedBox(
        //       height: 8.0,
        //     ),
        //     MyScrollerWidget(
        //         child: Padding(
        //       padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           MyProfileIconWithTextView(
        //             profileImage: "profile.png",
        //             userName: user_1_name,
        //             userStatus: user_1_status,
        //             userCheckText: user_1_check_text,
        //             userCheckIconData: "green_check_2.png",
        //             rightButtonText: user_1_button_text,
        //           ),
        //           const SizedBox(
        //             height: 10,
        //           ),
        //           Padding(
        //               padding: const EdgeInsets.only(left: 10.0),
        //               child: MyTextWidget(
        //                 text: user_post_title,
        //                 fontWeight: FontWeight.w700,
        //                 color: blackTextTitleColor,
        //               )),
        //           const SizedBox(
        //             height: 10,
        //           ),
        //           Padding(
        //               padding: const EdgeInsets.only(left: 10.0),
        //               child: MyTextWidget(
        //                 text: user_post_des,
        //                 color: blackTextDesColor,
        //                 maxLine: 7,
        //               )),
        //           const SizedBox(
        //             height: 10,
        //           ),
        //           Padding(
        //               padding: const EdgeInsets.all(10.0),
        //               child: MyUserActionsView(
        //                 countList: const [5, 5, 0, 0],
        //                 iconName: const [
        //                   "heart.png",
        //                   "comment.png",
        //                   "bookmark.png",
        //                   "dots.png"
        //                 ],
        //               )),
        //           divider,
        //           const SizedBox(
        //             height: 10,
        //           ),
        //           MyUserCommentsView(),
        //         ],
        //       ),
        //     )),
        //     const Spacer(),
        //     divider,
        //     Padding(
        //       padding: const EdgeInsets.all(10.0),
        //       child: MyBottomChatView(),
        //     )
        //   ],
        // ));
  //}
//}
