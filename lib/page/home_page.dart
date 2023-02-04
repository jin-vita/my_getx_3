import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('홈 화면'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Get.toNamed('/menu');

                    Get.snackbar(
                      '알림',
                      '메뉴 화면으로 이동합니다.',
                      snackPosition: SnackPosition.BOTTOM,
                      duration: const Duration(
                        seconds: 2,
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.access_alarm,
                    size: 15,
                  ),
                  label: const Text('메뉴 화면으로')),
            )
          ],
        ),
      ),
    );
  }
}
