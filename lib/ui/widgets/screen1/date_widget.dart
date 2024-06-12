import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  int _selectedDateIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          30,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                _selectedDateIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              width: 50,
              decoration: BoxDecoration(
                color: _selectedDateIndex == index
                    ? Colors.yellow.shade700
                    : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text('金',
                      style: GoogleFonts.notoSansJp(
                        color: _selectedDateIndex == index
                            ? Colors.white
                            : Colors.black,
                        fontSize: 16,
                      )),
                  Text('${index + 1}',
                      style: GoogleFonts.notoSansJp(
                        color: _selectedDateIndex == index
                            ? Colors.white
                            : Colors.black,
                        fontSize: 16,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
