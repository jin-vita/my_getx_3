import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('메뉴 화면'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.access_alarm,
                    size: 15,
                  ),
                  label: const Text('돌아가기')),
            )
          ],
        ),
      ),
    );
  }
}
