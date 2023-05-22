import 'package:flutter/material.dart';

import 'descriptionText.dart';
import 'firstLineText.dart';
import 'profilePicHolder.dart';
import 'secondLineText.dart';

const description =
    'Lorem ipsum dolor sit amet consectetur. Sed auctor dignissim sit egestas dolor turpis. Nunc congue vulputate tincidunt purus. Non lacus metus tortor elit mauris proin.';

onPressIcon() => {
  print('icona basıldı 2')
};

Widget bodyWidget(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  var horizontalPadding = (size.width - size.width * 0.9298245614);
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 120, horizontal: horizontalPadding),
    child: Column(
      children: [
        Row(
          children: [
            profilePicHolder(),
            const SizedBox(width: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                firstLineText(),
                secondLineText(),
                descriptionText(description: description),
              ],
            ),
          ],
        ),
        const SizedBox(height: 110),
        InkWell(
          onTap: onPressIcon,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2)),
            child: const Icon(
              Icons.keyboard_arrow_down_sharp,
              size: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}
