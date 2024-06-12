import 'package:flutter/material.dart';
import 'package:jiitak/ui/widgets/screen3/custom_field.dart';

class Topfeilds extends StatelessWidget {
  const Topfeilds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "店舗名*",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const CustomField(
          hintText: "Mer キッチン",
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "代表担当者名*",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const CustomField(
          hintText: "林田　絵梨花",
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "店舗電話番号*",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const CustomField(
          hintText: "123 - 4567 8910",
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "店舗住所*",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const CustomField(
          hintText: "大分県豊後高田市払田791-13",
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
