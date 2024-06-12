import 'package:flutter/material.dart';

class InfoHolder extends StatelessWidget {
  InfoHolder({super.key, required this.title, required this.runner});
  String title;
  VoidCallback runner;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    double fontSize = width * 0.05;

    return GestureDetector(
      onTap: runner,
      child: Container(
        width: width > 600 ? 0.5 * width : 0.7 * width,
        height: width > 600 ? 0.1 * height : 0.15 * height,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: ShapeDecoration(
          color: const Color(0xFFFB9C2C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
            child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0.08,
          ),
        )),
      ),
    );
  }
}
