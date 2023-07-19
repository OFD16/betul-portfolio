import 'package:betul_portfolio/components/circle_arrow_icon_button.dart';
import 'package:betul_portfolio/components/divided_colored_text.dart';
import 'package:betul_portfolio/types/arrow_direction.dart';
import 'package:flutter/material.dart';

const description =
    'Lorem ipsum dolor sit amet consectetur. Sed auctor dignissim sit egestas dolor turpis. Nunc congue vulputate tincidunt purus. Non lacus metus tortor elit mauris proin.';

onPressIcon() => {print('icona basıldı 1')};

Widget bodyWidget(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  var horizontalPadding = (size.width - size.width * 0.9298245614);
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 120, horizontal: horizontalPadding),
    child: const Column(
      children: [
        DividedColoredText(title: 'MY RECENT'),
        DividedColoredText(title: 'PROJECTS'),
        SizedBox(height: 110),
        CircleIconButton(
          onPressIcon: onPressIcon,
          arrowDirection: ArrowDirection.down,
        ),
      ],
    ),
  );
}
