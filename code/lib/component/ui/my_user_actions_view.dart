import 'package:flutter/material.dart';
import 'package:frontend_test/component/ui/my_icon_with_text_view.dart';

class MyUserActionsView extends StatelessWidget {
  List<int> countList = [];
  List<String> iconName = [];
  MyUserActionsView(
      {super.key, required this.countList, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (int i = 0; i < countList.length; i++) ...[
        Padding(
            padding: EdgeInsets.only(left: i > 0 ? 15 : 10.0),
            child: countList.elementAt(i) == 0
                ? MyIconWithTextView(
                    iconData: iconName.elementAt(i),
                  )
                : MyIconWithTextView(
                    iconData: iconName.elementAt(i),
                    text: "${countList.elementAt(i)}",
                  ))
      ],
    ]);
  }
}
