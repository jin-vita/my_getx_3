import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page/home_page.dart';
import 'page/menu_page.dart';

void main() {
  _initController();
  runApp(const MyApp());
}

void _initController() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/menu',
          page: () => const MenuPage(),
          transition: Transition.rightToLeft,
        ),
      ],
    );
  }
}
