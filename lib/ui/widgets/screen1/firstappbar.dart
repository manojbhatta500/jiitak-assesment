import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                        color: const Color(0XFFFAFAFA),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '人生は素晴らしい',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                      )),
                  Icon(
                    FontAwesomeIcons.list,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  const Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.red,
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
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.yellow.shade700,
                  const Color(0xFFFFD78D),
                  const Color(0xFFFFFFFF),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'もっと笑って',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff303030)),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2);
}
