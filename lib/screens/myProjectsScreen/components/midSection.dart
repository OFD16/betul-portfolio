import 'package:betul_portfolio/components/blog_card.dart';
import 'package:betul_portfolio/components/card_lister.dart';
import 'package:betul_portfolio/components/circle_arrow_icon_button.dart';
import 'package:betul_portfolio/components/lister_content.dart';
import 'package:betul_portfolio/types/arrow_direction.dart';
import 'package:flutter/material.dart';

import 'package:betul_portfolio/design/app_colors.dart';

final data = [
  {
    'title': 'Başlık',
    'id': 'a1',
    'image':
        'https://www.shutterstock.com/image-photo/word-example-written-on-magnifying-260nw-1883859943.jpg',
    'description': 'I am Omar.'
  },
  {
    'id': 'a2',
    'image':
        'https://t3.ftcdn.net/jpg/00/92/53/56/360_F_92535664_IvFsQeHjBzfE6sD4VHdO8u5OHUSc6yHF.jpg',
    'description':
        'This is another item. asdghfjasdghfasdghasdhfjasdghfasdghasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfhfjasdghfasdghasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfhfjasdghfasdghasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfhfjasdghfasdghasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfhfjasdghfasdghasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfhfjasdghfasdghasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfhfjasdghfasdghasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfhfjasdghfasdghasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfhfjasdghfasdghasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfaasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfsdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghfasdghffjdhgsaafasagsaafasasdghfjdhgsaafasasdghfjdhgsaafasasdghfjdhgsaafasasdghfjdhgsaafasdhgsaafas',
  },
  {
    'id': 'a3',
    'image':
        'https://thumbs.dreamstime.com/b/example-red-tag-example-red-square-price-tag-117502755.jpg',
    'description': 'And here is one more item.',
  }
];
onPressIcon() => {print('İcona basıldı')};
var item = data[1];

Widget midSection(BuildContext context) {
  return Column(
    children: [
      Stack(clipBehavior: Clip.none, children: [
        Container(
          //width: double.infinity,
          width: 462,
          height: 266,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            shape: BoxShape.rectangle,
            color: AppColors.exPink,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                spreadRadius: 2,
                blurRadius: 0,
                offset: const Offset(4, 4),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 45,
          left: 45,
          child: Container(
            //width: double.infinity,
            width: 444,
            height: 252,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              shape: BoxShape.rectangle,
              image: const DecorationImage(
                image: NetworkImage(
                    'https://images.ctfassets.net/hrltx12pl8hq/7JnR6tVVwDyUM8Cbci3GtJ/bf74366cff2ba271471725d0b0ef418c/shutterstock_376532611-og.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ]),
    ],
  );
}

Widget content(void Function()? onPressIcon) {
  return Row(
    children: [
      BlogCard(item: item),
      const SizedBox(width: 30),
      CircleIconButton(
        onPressIcon: onPressIcon,
        arrowDirection: ArrowDirection.right,
      ),
    ],
  );
}
