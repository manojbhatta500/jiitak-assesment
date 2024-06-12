import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak/utils/customassets.dart';

class FirstAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FirstAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = MediaQuery.of(context).size.height;
    final double appBarWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: appBarHeight * 0.12,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: appBarWidth * 0.6,
                      height: appBarHeight * 0.055,
                      decoration: BoxDecoration(
                        color: const Color(0XFFF7F7F7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '北海道, 札幌市',
                          hintStyle: Theme.of(context).textTheme.bodyLarge,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                      )),
                  SvgPicture.asset(
                    CustomAssets.filterIcon,
                    semanticsLabel: 'filter Logo',
                    color: Color(0xff303030),
                  ),
                  SvgPicture.asset(
                    CustomAssets.heartIcon,
                    semanticsLabel: 'heart Logo',
                    color: Color(0xffEE5F40),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 0.04 * appBarHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  const Color(0xFFFAAA14),
                  const Color(0xFFFFD78D),
                ],
              ),
            ),
            child: Center(
              child: Text('2022年 5月 26日（木）',
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2);
}
