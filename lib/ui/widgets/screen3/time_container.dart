import 'package:flutter/material.dart';
import 'package:jiitak/ui/widgets/screen3/dropdown.dart';

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
        ],
      ),
    );
  }
}
