import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({super.key, required this.userInput, this.showIcon = true});
  final String userInput;

  bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          color: Color(0XFFE8E8E8),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black.withOpacity(0.1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            userInput,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          showIcon
              ? Icon(Icons.keyboard_arrow_down_outlined)
              : SizedBox(
                  width: 1,
                )
        ],
      ),
    );
  }
}
