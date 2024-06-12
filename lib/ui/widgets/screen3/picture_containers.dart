import 'package:flutter/material.dart';
import 'package:jiitak/ui/widgets/screen3/null_picture_container.dart';
import 'package:jiitak/ui/widgets/screen3/picture_holder.dart';
import 'package:jiitak/utils/customassets.dart';

class PictureConatainers extends StatelessWidget {
  const PictureConatainers({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment:
            width > 600 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Text(
            '店舗外観*（最大3枚まで）',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.start,
            children: [
              for (int i = 0; i < 3; i++)
                i < 2
                    ? PictureHolder(userInput: CustomAssets.homepic)
                    : NullPictureContainer(),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '店舗内観*（1枚〜3枚ずつ追加してください）',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.start,
            children: [
              for (int i = 0; i < 3; i++)
                PictureHolder(
                  userInput: CustomAssets.officeImage,
                )
            ],
          ),
          Text(
            '料理写真*（1枚〜3枚ずつ追加してください）',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.start,
            children: [
              for (int i = 0; i < 2; i++)
                PictureHolder(
                  userInput: CustomAssets.food,
                )
            ],
          ),
          Text(
            'メニュー写真*（1枚〜3枚ずつ追加してください）',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.start,
            children: [
              for (int i = 0; i < 2; i++)
                PictureHolder(
                  userInput: CustomAssets.menu,
                )
            ],
          ),
        ],
      ),
    );
  }
}
