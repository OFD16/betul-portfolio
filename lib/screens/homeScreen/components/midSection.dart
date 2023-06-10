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
      CardLister(
        title: 'Some of my Projects',
        content: ListerContent(data: data),
        isRight: false,
      ),
      const SizedBox(height: 80),
      CardLister(
        title: 'Some of my Blog Posts',
        content: content(onPressIcon),
        isRight: true,
        mainAxis: const EdgeInsets.only(top: 20, bottom: 20, left: 80),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          shape: BoxShape.rectangle,
          color: AppColors.mainBackground,
        ),
      ),
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
