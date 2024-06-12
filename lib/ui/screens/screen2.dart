import 'package:flutter/material.dart';
import 'package:jiitak/ui/widgets/screen2/blue_container.dart';
import 'package:jiitak/ui/widgets/screen2/white_container.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFA8B1FF),
        body: Column(
          children: [
            BlueContainer(),
            WhiteContainer(),
          ],
        ),
      ),
    );
  }
}
