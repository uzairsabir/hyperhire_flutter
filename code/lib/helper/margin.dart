import 'package:flutter/widgets.dart';
import 'package:frontend_test/helper/util.dart';

Size appBar = Util.isTablet()
    ? Size(MediaQuery.of(app_context).size.width, 60.0)
    : Size(MediaQuery.of(app_context).size.width, 48.0);

double heightProfileImage = Util.isTablet() ? 50.0 : 35.0;
double widthProfileImage = Util.isTablet() ? 50.0 : 35.0;
