import 'package:flutter/material.dart';
import 'package:jiitak/ui/widgets/screen1/date_widget.dart';
import 'package:jiitak/ui/widgets/screen1/firstappbar.dart';
import 'package:jiitak/ui/widgets/screen1/package_detail.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: const FirstAppBar(),
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
                crossAxisCount: width > 600 ? 2 : 1,
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
