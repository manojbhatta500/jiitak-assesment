import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak/ui/widgets/screen2/ballet.dart';
import 'package:jiitak/ui/widgets/screen2/sliders.dart';

class WhiteContainer extends StatelessWidget {
  const WhiteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Column(
          children: [
            Sliders(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '1/2がオンです',
                  style: GoogleFonts.notoSansJp(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'スタンプ獲得履歴',
                  style: GoogleFonts.notoSansJp(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 30, // Number of items you want to display
                itemBuilder: (context, index) {
                  return BalletContainer();
                },
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
