import 'package:flutter/material.dart';

class MyIconWidget extends StatelessWidget {
  dynamic iconData;
  double? padding;

  MyIconWidget({super.key, required this.iconData, this.padding = 5.0});

  @override
  Widget build(BuildContext context) {
    if (iconData.contains("png")) {
      return IconButton(
        padding: EdgeInsets.all(padding!),
        icon: Image.asset('assets/icons/$iconData'),
        onPressed: () => {},
      );
    }

    return Icon(
      iconData,
      size: padding ?? 5.0,
    );
  }
}
