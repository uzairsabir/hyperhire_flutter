import 'package:flutter/widgets.dart';

import 'app_router.dart';

class Util {
  static isTablet() {
    double ratio = MediaQuery.of(app_context).size.width /
        MediaQuery.of(app_context).size.height;
    if ((ratio >= 0.74) && (ratio < 1.5)) {
      return true;
    } else {
      return false;
    }
  }

  static double widthFromText(String text) {
    final double width = (TextPainter(
            text: TextSpan(
                text: text,
                style: const TextStyle(
                    fontSize: 13,
                    fontFamily: 'NotoSans-Regular',
                    fontWeight: FontWeight.normal)),
            maxLines: 1,
            textScaleFactor: MediaQuery.of(app_context).textScaleFactor,
            textDirection: TextDirection.ltr)
          ..layout())
        .size
        .width;

    return width;
  }
}

final app_context = AppRouter.navigatorKey.currentContext!;
