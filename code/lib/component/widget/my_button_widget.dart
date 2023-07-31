import 'package:flutter/material.dart';
import 'package:frontend_test/component/widget/my_text_widget.dart';
import 'package:frontend_test/helper/color.dart';

class MyButtonWidget extends StatelessWidget {
  String text;
  double height;
  double width;
  int id;

  final Function(int) onChanged;

  MyButtonWidget(
      {super.key,
      required this.onChanged,
      this.text = "-",
      this.id = 0,
      this.height = 20.0,
      this.width = 55.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: InkWell(
            onTap: () => onChanged(id),
            child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: greenButtonColor,
                    ),
                    color: greenButtonColor,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Align(
                    alignment: Alignment.center,
                    child: MyTextWidget(
                      text: text,
                      color: backgroundColor,
                    )))));
  }
}
