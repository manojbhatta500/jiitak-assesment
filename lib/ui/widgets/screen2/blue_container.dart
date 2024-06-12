import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: 0.15 * height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.04 * width, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff949EFF)),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      weight: 1,
                    ),
                  ),
                ),
                Text(
                  'いらっしゃいませ',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Icon(
                  FontAwesomeIcons.circleMinus,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '幸福への道',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  '今すぐ参加してください',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
