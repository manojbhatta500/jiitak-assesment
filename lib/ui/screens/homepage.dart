import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/routes/routes.dart';
import 'package:jiitak/ui/widgets/info_holder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoHolder(
                title: 'Screen 1',
                runner: () {
                  Get.toNamed(Routes.screen1);
                },
              ),
              InfoHolder(
                title: 'Screen 2',
                runner: () {
                  Get.toNamed(Routes.screen2);
                },
              ),
              InfoHolder(
                title: 'Screen 3',
                runner: () {
                  Get.toNamed(Routes.screen3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
