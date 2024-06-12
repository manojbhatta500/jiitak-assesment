import 'package:flutter/material.dart';
import 'package:jiitak/ui/widgets/screen3/map_container.dart';
import 'package:jiitak/ui/widgets/screen3/picture_containers.dart';
import 'package:jiitak/ui/widgets/screen3/third_appbar.dart';
import 'package:jiitak/ui/widgets/screen3/time_container.dart';
import 'package:jiitak/ui/widgets/screen3/top_feilds.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      top: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              children: [
                ThirdAppBar(),
                width > 600
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10, horizontal: 0.25 * width),
                        child: Topfeilds(),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(0),
                        child: Topfeilds(),
                      ),
                MapContainer(),
                PictureConatainers(),
                TimeContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
