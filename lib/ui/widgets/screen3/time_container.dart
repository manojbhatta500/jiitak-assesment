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
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '営業時間*',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
          Text(
            'ランチ時間*',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
          Text(
            '定休日*',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CustomCheckbox(userInput: '月'),
              CustomCheckbox(userInput: '火'),
              CustomCheckbox(userInput: '水'),
              CustomCheckbox(userInput: '木'),
            ],
          ),
          Row(
            children: [
              CustomCheckbox(userInput: '金'),
              CustomCheckbox(userInput: '土'),
              CustomCheckbox(userInput: '日'),
              CustomCheckbox(userInput: '祝'),
            ],
          ),
          Text(
            '料理カテゴリー*12',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 200,
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
          Text(
            '予算*',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
          Text(
            'キャッチコピー*',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 5,
          ),
          const CustomField(
            hintText: "美味しい！リーズナブルなオムライスランチ！",
          ),
          // new
          SizedBox(
            height: 5,
          ),
          Text(
            '座席数*',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 5,
          ),
          const CustomField(
            hintText: "40席",
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '喫煙席*',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            children: [
              CustomCheckbox(userInput: '有'),
              CustomCheckbox(userInput: '無'),
            ],
          ),
          // another one
          SizedBox(
            height: 5,
          ),
          Text(
            '駐車場*',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            children: [
              CustomCheckbox(userInput: '有'),
              CustomCheckbox(userInput: '無'),
            ],
          ),
          // new one
          SizedBox(
            height: 5,
          ),
          Text(
            '来店プレゼント*',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            children: [
              CustomCheckbox(userInput: '有（最大３枚まで）'),
              CustomCheckbox(userInput: '無'),
            ],
          ),
          Row(
            children: [
              for (int i = 0; i < 2; i++)
                PictureHolder(userInput: CustomAssets.icecream)
            ],
          ),
          // new
          SizedBox(
            height: 5,
          ),
          Text(
            '来店プレゼント名*',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 5,
          ),
          const CustomField(
            hintText: "いちごクリームアイスクリーム, ジュース",
          ),
          SizedBox(
            height: 20,
          ),
          Container(
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
        ],
      ),
    );
  }
}
