import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
          textTheme: TextTheme(
        bodyLarge: GoogleFonts.notoSansJp(),
        bodyMedium: GoogleFonts.notoSansJp(),
        bodySmall: GoogleFonts.notoSansJp(),
        labelLarge: GoogleFonts.notoSansJp(),
        labelMedium: GoogleFonts.notoSansJp(),
        displayLarge: GoogleFonts.notoSansJp(),
        displayMedium: GoogleFonts.notoSansJp(),
        titleSmall: GoogleFonts.notoSansJp(),
        displaySmall: GoogleFonts.notoSansJp(),
        headlineLarge: GoogleFonts.notoSansJp(),
        headlineMedium: GoogleFonts.notoSansJp(),
        headlineSmall: GoogleFonts.notoSansJp(),
        labelSmall: GoogleFonts.notoSansJp(),
        titleLarge: GoogleFonts.notoSansJp(),
        titleMedium: GoogleFonts.notoSansJp(),
      )),
    );
  }
}

// my thought process
 
/*


i use mediaquery and  and flexible  and gridview.builder for building 

i pefer mediaquery because then i can set the height and width depending upon the current screen size 
which i find most productive








*/