import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiitak/utils/customassets.dart';

class MapContainer extends StatelessWidget {
  const MapContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(15)),
      child: Image.asset(
        CustomAssets.mappic,
        fit: BoxFit.cover,
      ),
    );
  }
}
