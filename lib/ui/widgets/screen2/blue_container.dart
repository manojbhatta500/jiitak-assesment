import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak/utils/customassets.dart';

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
                        shape: BoxShape.circle, color: Color(0xff949EFF)),
                    child: SvgPicture.asset(
                      CustomAssets.backIcon,
                      semanticsLabel: 'done Logo',
                      height: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'スタンプカード詳細',
                  style:
                      GoogleFonts.notoSansJp(color: Colors.white, fontSize: 18),
                ),
                SvgPicture.asset(
                  CustomAssets.minimize,
                  semanticsLabel: 'mini Logo',
                  height: 25,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mer キッチン',
                  style:
                      GoogleFonts.notoSansJp(color: Colors.white, fontSize: 18),
                ),
                Text(
                  '現在の獲得数 30 個',
                  style:
                      GoogleFonts.notoSansJp(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}
