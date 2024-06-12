import 'package:flutter/material.dart';

class PictureHolder extends StatelessWidget {
  PictureHolder({super.key, required this.userInput});
  final String userInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              userInput,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10,
            right: 15,
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
