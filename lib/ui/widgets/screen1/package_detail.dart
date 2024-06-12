import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak/utils/customassets.dart';

class PackageDetail extends StatelessWidget {
  const PackageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 600,
      ),
      child: Container(
        width: 300,
        margin: EdgeInsets.symmetric(vertical: 1, horizontal: 0.04 * width),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    CustomAssets.healthpic,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 5,
                    left: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 6),
                      decoration: const BoxDecoration(
                          color: Color(0xffFF6262),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4))),
                      child: const Text(
                        '本日まで',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.white.withOpacity(0.96),
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('介護有料老人ホームひルパー求人（パート／バイト）',
                          style: GoogleFonts.notoSansJp(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )
                          // TextStyle(
                          //   fontStyle: GoogleFonts.,

                          // ),
                          ),
                      const SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 4),
                            decoration: BoxDecoration(
                              color: Color(0XFFE8E8E8),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                '介護付き有料老人ホーム',
                                style: GoogleFonts.notoSansJp(
                                    color: Color(0XFFFAAA14), fontSize: 12),
                              ),
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '¥ 6,000',
                              style: GoogleFonts.notoSansJp(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 1),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          '5月 31日（水）08 : 00 ~ 17 : 00',
                          style: GoogleFonts.notoSansJp(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 1),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          '北海道札幌市東雲町3丁目916番地17号',
                          style: GoogleFonts.notoSansJp(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      //
                      const SizedBox(height: 1),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          '交通費 300円',
                          style: GoogleFonts.notoSansJp(
                            fontSize: 13,
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '住宅型有料老人ホームひまわり倶楽部',
                              style: GoogleFonts.notoSansJp(
                                  fontSize: 12, color: Color(0XFF303030)),
                            ),
                          ),
                          // Icon(
                          //   FontAwesomeIcons.heart,
                          //   color: Colors.red,
                          // ),
                          SvgPicture.asset(
                            CustomAssets.heartIcon,
                            height: 20,
                            semanticsLabel: 'heart Logo',
                            color: Color(0xffEE5F40),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
