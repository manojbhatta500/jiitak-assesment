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

// my thought process
 
/*
i use a lot of custom widget and create a seperation between my pages 
and my ui so i have divided them into 2 folders and one is screen and widgets

i use mediaquery and  and flexible  and gridview.builder for building 

i pefer mediaquery because then i can set the height and width depending upon the current screen size 
which i find most productive







// issues
i use linux(arch linux) so i don't have figma application but i am using a web version and i had kinda problem getting
texts,images and etc 
so i wrote my own text from google  and used images from internet. 
sorry for this.


*/