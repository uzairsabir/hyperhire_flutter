import 'package:flutter/material.dart';

class MyScrollerWidget extends StatelessWidget {
  Widget child;
  MyScrollerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: child,
    );
  }
}
