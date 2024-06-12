import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/utils/customassets.dart';

class NullPictureContainer extends StatelessWidget {
  NullPictureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.black,
      strokeWidth: 0.5,
      child: Container(
        height: 90,
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              CustomAssets.emptyImage,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text('写真を追加'),
            ),
          ],
        ),
      ),
    );
  }
}
