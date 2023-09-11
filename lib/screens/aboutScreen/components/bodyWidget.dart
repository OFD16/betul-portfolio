import 'package:betul_portfolio/components/circle_arrow_icon_button.dart';
import 'package:betul_portfolio/components/divided_colored_text.dart';
import 'package:betul_portfolio/design/app_colors.dart';
import 'package:betul_portfolio/design/app_text_styles.dart';
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
    child: Column(
      children: [
        Container(
          width: 641,
          height: 456,
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                spreadRadius: 2,
                blurRadius: 0,
                offset: const Offset(4, 4),
              ),
            ],
            shape: BoxShape.rectangle,
          ),
          child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.network(
                    
                        'https://images.ctfassets.net/hrltx12pl8hq/7JnR6tVVwDyUM8Cbci3GtJ/bf74366cff2ba271471725d0b0ef418c/shutterstock_376532611-og.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
        ),
        const SizedBox(height: 50),
        Container(
          width: 570,
          height: 329,
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          decoration: BoxDecoration(
            color: AppColors.mainPurple,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                spreadRadius: 2,
                blurRadius: 0,
                offset: const Offset(4, 4),
              ),
            ],
            shape: BoxShape.rectangle,
          ),
          child: Column(
            children: [
              Text('data')
              
            ],
          )
        ),
        SizedBox(height: 110),
        CircleIconButton(
          onPressIcon: onPressIcon,
          arrowDirection: ArrowDirection.down,
        ),
      ],
    ),
  );
}
