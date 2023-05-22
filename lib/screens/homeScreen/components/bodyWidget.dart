import 'package:flutter/material.dart';

import 'descriptionText.dart';
import 'firstLineText.dart';
import 'profilePicHolder.dart';
import 'secondLineText.dart';

const description =
    'Lorem ipsum dolor sit amet consectetur. Sed auctor dignissim sit egestas dolor turpis. Nunc congue vulputate tincidunt purus. Non lacus metus tortor elit mauris proin.';

Widget bodyWidget(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  var horizontalPadding = (size.width - size.width * 0.9298245614);
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 120, horizontal: horizontalPadding),
    child: Row(
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
        )
      ],
    ),
  );
}
