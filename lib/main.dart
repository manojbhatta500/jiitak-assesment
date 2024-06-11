import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/routes/routes.dart';
import 'package:jiitak/ui/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.homepage,
      getPages: Routes.getPages,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
