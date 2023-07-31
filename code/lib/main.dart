import 'package:flutter/material.dart';
import 'package:frontend_test/view/home/home.dart';
import 'helper/app_router.dart';
import 'helper/color.dart';
import 'helper/string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: AppRouter.navigatorKey,
      title: app_title,
      theme: ThemeData(
        primarySwatch: MaterialColorGenerator.from(backgroundColor),
      ),
      home: const Home(title: app_title),
    );
  }
}
