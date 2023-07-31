import 'package:flutter/material.dart';
import 'package:frontend_test/component/widget/my_text_widget.dart';
import 'package:frontend_test/helper/color.dart';
import 'package:frontend_test/helper/util.dart';

class MyHashTagView extends StatelessWidget {
  List<String> hashList = [];

  MyHashTagView({super.key, required this.hashList});

  @override
  Widget build(BuildContext context) {
    if (hashList.isEmpty) {
      return Container();
    }

    double totalTextWidth = 0.0;
    int rowCount = 1;
    String itemInRow = "";

    for (var item in hashList) {
      totalTextWidth += Util.widthFromText(item);

      if (totalTextWidth * 2 >
          MediaQuery.of(app_context).size.width * rowCount) {
        rowCount += 1;
        itemInRow = itemInRow.substring(0, itemInRow.length - 1);
        itemInRow += "|";
      }
      itemInRow += "$item,";
    }
    itemInRow = itemInRow.substring(0, itemInRow.length - 1);

    return Column(
      children: [
        for (var i = 0; i < itemInRow.split("|").length; i++)
          Row(
            children: [
              for (var j = 0;
                  j < itemInRow.split("|")[i].split(",").length;
                  j++)
                _itemView(itemInRow.split("|")[i].split(",")[j])
            ],
          )
      ],
    );
  }

  Widget _itemView(String text) {
    return Padding(
        padding: const EdgeInsets.only(right: 10.0, top: 5.0),
        child: InkWell(
            onTap: () => {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: greyHashBackgroundBorderColor,
                    ),
                    color: greyHashBackgroundColor,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 3.0, bottom: 3.0),
                    child: Align(
                        alignment: Alignment.center,
                        child: MyTextWidget(
                          text: "#${text}",
                          color: greyHashTextColor,
                        ))))));
  }
}
