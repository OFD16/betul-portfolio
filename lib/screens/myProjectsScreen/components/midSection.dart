import 'package:betul_portfolio/components/blog_card.dart';
import 'package:betul_portfolio/components/circle_arrow_icon_button.dart';
import 'package:betul_portfolio/components/expander_card.dart';
import 'package:betul_portfolio/components/lister_content.dart';

import 'package:betul_portfolio/types/arrow_direction.dart';
import 'package:flutter/material.dart';

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

Widget midSection() {
  return const Column(
    children: [
      ExpanderCard(
        title: 'Redesign',
        description:
            'Lorem ipsum dolor sit amet consectetur. Est adipiscing neque adipiscing nunc dignissim cursus vitae. Vel consequat amet ',
      )
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
