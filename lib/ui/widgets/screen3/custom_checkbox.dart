import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key, required this.userInput});
  final String userInput;

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            activeColor: Color(0XFFEE7D42), // Color when checkbox is active
            checkColor: Colors.white, // Color of the check mark

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),

              side: BorderSide(
                  width: 1, color: Color(0xFFE8E8E8)), // Border color
            ),
            onChanged: (bool? value) {
              setState(() {
                isChecked = value ?? false;
              });
            },
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            widget.userInput,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
