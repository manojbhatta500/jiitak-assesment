import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak/ui/widgets/screen3/custom_checkbox.dart';
import 'package:jiitak/ui/widgets/screen3/custom_field.dart';
import 'package:jiitak/ui/widgets/screen3/dropdown.dart';
import 'package:jiitak/ui/widgets/screen3/null_picture_container.dart';
import 'package:jiitak/ui/widgets/screen3/picture_holder.dart';
import 'package:jiitak/utils/customassets.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment:
            width > 600 ? CrossAxisAlignment.stretch : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          width > 600
              ? Center(
                  child: Text(
                    '営業時間*',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              : Text(
                  '営業時間*',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              CustomDropDown(
                userInput: '10:00',
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '~ ',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                width: 5,
              ),
              CustomDropDown(
                userInput: '20:00',
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          width > 600
              ? Center(
                  child: Text(
                    'ランチ時間*',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              : Text(
                  'ランチ時間*',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              CustomDropDown(
                userInput: '11:00',
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '~ ',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                width: 5,
              ),
              CustomDropDown(
                userInput: '15:00',
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          width > 500
              ? Center(
                  child: Text(
                    '定休日*',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              : Text(
                  '定休日*',
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
              CustomCheckbox(userInput: '月'),
              CustomCheckbox(userInput: '火'),
              CustomCheckbox(userInput: '水'),
              CustomCheckbox(userInput: '木'),
            ],
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.start,
            children: [
              CustomCheckbox(userInput: '金'),
              CustomCheckbox(userInput: '土'),
              CustomCheckbox(userInput: '日'),
              CustomCheckbox(userInput: '祝'),
            ],
          ),
          // checkpoint 1
          width > 500
              ? Center(
                  child: Text(
                    '料理カテゴリー*12 ',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              : Text(
                  '料理カテゴリー*12 ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 200,
            margin: width > 500
                ? EdgeInsets.symmetric(horizontal: 0.3 * width)
                : EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
                color: Color(0XFFE8E8E8),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black.withOpacity(0.1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '料理カテゴリー選択',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // checkpoint 2
          width > 500
              ? Center(
                  child: Text(
                    '予算*',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              : Text(
                  '予算*',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              CustomDropDown(
                userInput: '¥ 1,000',
                showIcon: false,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '~ ',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                width: 5,
              ),
              CustomDropDown(
                userInput: '¥ 2,000',
                showIcon: false,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          // checkpoint 3
          Padding(
            padding: width > 600
                ? EdgeInsets.symmetric(vertical: 10, horizontal: 0.25 * width)
                : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Text(
              'キャッチコピー*',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: width > 600
                ? EdgeInsets.symmetric(vertical: 10, horizontal: 0.25 * width)
                : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: const CustomField(
              hintText: "美味しい！リーズナブルなオムライスランチ！",
            ),
          ),
          // new
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: width > 600
                ? EdgeInsets.symmetric(vertical: 10, horizontal: 0.25 * width)
                : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Text(
              '座席数*',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: width > 600
                ? EdgeInsets.symmetric(vertical: 10, horizontal: 0.25 * width)
                : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: const CustomField(
              hintText: "40席",
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: width > 600
                ? EdgeInsets.symmetric(vertical: 10, horizontal: 0.25 * width)
                : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Text(
              '喫煙席*',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.start,
            children: [
              CustomCheckbox(userInput: '有'),
              CustomCheckbox(userInput: '無'),
            ],
          ),
          // another one
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: width > 600
                ? EdgeInsets.symmetric(vertical: 10, horizontal: 0.25 * width)
                : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Text(
              '駐車場*',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.start,
            children: [
              CustomCheckbox(userInput: '有'),
              CustomCheckbox(userInput: '無'),
            ],
          ),
          // new one
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: width > 600
                ? EdgeInsets.symmetric(vertical: 10, horizontal: 0.25 * width)
                : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Text(
              '来店プレゼント*',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.start,
            children: [
              CustomCheckbox(userInput: '有（最大３枚まで）'),
              CustomCheckbox(userInput: '無'),
            ],
          ),
          Row(
            mainAxisAlignment: width > 500
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.start,
            children: [
              for (int i = 0; i < 2; i++)
                PictureHolder(userInput: CustomAssets.icecream)
            ],
          ),
          // new
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: width > 600
                ? EdgeInsets.symmetric(vertical: 10, horizontal: 0.25 * width)
                : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Text(
              '来店プレゼント名*',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: width > 600
                ? EdgeInsets.symmetric(vertical: 10, horizontal: 0.25 * width)
                : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: const CustomField(
              hintText: "いちごクリームアイスクリーム, ジュース",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: width > 600
                ? EdgeInsets.symmetric(vertical: 10, horizontal: 0.25 * width)
                : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: ShapeDecoration(
                color: const Color(0xFFEE7D42),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                  child: Text('編集を保存',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSansJp(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14))),
            ),
          ),
        ],
      ),
    );
  }
}
