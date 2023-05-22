import 'package:flutter/material.dart';

import '../../../components/blog_card.dart';
import '../../../components/card_lister.dart';
import '../../../components/lister_content.dart';
import '../../../design/app_colors.dart';

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
        content: content(),
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
Widget content() {
  return Row(
    children: [
      BlogCard(item: item),
      InkWell(
        onTap: onPressIcon,
        child: Container(
          margin: const EdgeInsets.only(left: 30),
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2)),
          child: const Icon(
            Icons.chevron_right,
            size: 18,
            color: Colors.black,
          ),
        ),
      )
    ],
  );
}