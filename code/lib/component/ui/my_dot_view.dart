import 'package:flutter/widgets.dart';
import 'package:frontend_test/helper/color.dart';

class MyDotView extends StatelessWidget {
  const MyDotView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 2,
          height: 2,
          decoration: BoxDecoration(
              border: Border.all(
                color: lightGreyTextColor,
              ),
              color: lightGreyTextColor,
              borderRadius: const BorderRadius.all(Radius.circular(100))),
        ));
  }
}
