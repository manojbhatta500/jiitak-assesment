import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiitak/ui/widgets/screen1/date_widget.dart';
import 'package:jiitak/ui/widgets/screen1/firstappbar.dart';
import 'package:jiitak/ui/widgets/screen1/package_detail.dart';
import 'package:jiitak/utils/customassets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: const FirstAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: SvgPicture.asset(
          CustomAssets.floatbutton,
          semanticsLabel: 'float buton',
          color: Color(0xffEE5F40),
          width: 24,
          height: 24,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const DateWidget(),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: width > 700 ? 2 : 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return const PackageDetail();
              },
            ),
          ),
        ],
      ),
    ));
  }
}
