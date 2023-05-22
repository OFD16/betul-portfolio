import 'package:flutter/material.dart';

import '../../../components/cardListerWidget.dart';
import '../../../components/listerContentWidget.dart';
import '../../../design/app_colors.dart';
import '../../../design/app_text_styles.dart';

final data = [
  {
    'id': 'a1',
    'image':
        'https://www.shutterstock.com/image-photo/word-example-written-on-magnifying-260nw-1883859943.jpg',
    'description': 'I am Omar.'
  },
  {
    'id': 'a2',
    'image':
        'https://t3.ftcdn.net/jpg/00/92/53/56/360_F_92535664_IvFsQeHjBzfE6sD4VHdO8u5OHUSc6yHF.jpg',
    'description': 'This is another item.',
  },
  {
    'id': 'a3',
    'image':
        'https://thumbs.dreamstime.com/b/example-red-tag-example-red-square-price-tag-117502755.jpg',
    'description': 'And here is one more item.',
  }
];
var item = data[1];
Widget midSection(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
  return Column(
    children: [
      cardListerWidget(
        title: 'Some of my Projects',
        content: listerContentsWidget(data: data),
      ),
      cardListerWidget(
        title: 'Some of my Blog Posts',
        content: Container(
            height: (screenSize.width * 0.69444444444) *  0.32,
            width: screenSize.width * 0.69444444444,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              shape: BoxShape.rectangle,
              color: AppColors.lightGreen,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Image.network(
                        item?['image'] ??
                            'https://images.ctfassets.net/hrltx12pl8hq/7JnR6tVVwDyUM8Cbci3GtJ/bf74366cff2ba271471725d0b0ef418c/shutterstock_376532611-og.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 105),
                Expanded(
                  flex: 7,
                  child: Text(
                    item?['description'] ??
                        'Lorem ipsum dolor sit amet consectetur. Velit semper dignissim lacus vel sit vehicula facilisis arcu pharetra. ömer ömer ömer ömer ömer  ömer  ömer  ömer  ömer  ömer  ömer  ömer  ömer  Turpis volutpat tristique nulla accumsan',
                    style: AppTextStyles.cardDescription,
                  ),
                ),
              ],
            )),
        isRight: true,
      ),
    ],
  );
}
