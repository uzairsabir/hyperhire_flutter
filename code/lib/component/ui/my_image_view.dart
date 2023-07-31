import 'package:flutter/material.dart';
import 'package:frontend_test/component/widget/my_icon_widget.dart';

class MyImageView extends StatelessWidget {
  dynamic imagePathOrData;
  double? height;
  double? width;
  double? padding;

  MyImageView(
      {super.key,
      required this.imagePathOrData,
      this.height = 25.0,
      this.width = 100.0,
      this.padding});

  @override
  Widget build(BuildContext context) {
    if (imagePathOrData == null) {
      return Container();
    }
    if (imagePathOrData.contains("https")) {
      return FadeInImage(
        height: height,
        width: width,
        fit: BoxFit.fill,
        image: NetworkImage(imagePathOrData),
        placeholder: AssetImage('assets/icons/image_view.png'),
      );
    }

    return MyIconWidget(
      iconData: imagePathOrData,
      padding: padding,
    );
  }
}
