import 'package:betul_portfolio/components/circle_arrow_icon_button.dart';
import 'package:betul_portfolio/types/arrow_direction.dart';
import 'package:flutter/material.dart';

import 'descriptionText.dart';
import 'firstLineText.dart';
import 'profilePicHolder.dart';
import 'secondLineText.dart';

const description =
    'Lorem ipsum dolor sit amet consectetur. Sed auctor dignissim sit egestas dolor turpis. Nunc congue vulputate tincidunt purus. Non lacus metus tortor elit mauris proin.';

onPressIcon() => {print('icona basıldı 1')};

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
        const CircleIconButton(
          onPressIcon: onPressIcon,
          arrowDirection: ArrowDirection.down,
        ),
      ],
    ),
  );
}
