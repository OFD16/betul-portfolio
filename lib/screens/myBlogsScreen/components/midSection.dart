import 'package:betul_portfolio/design/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:betul_portfolio/components/expander_card.dart';

onPressIcon() => {print('İcona basıldı')};

var projectsList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
var leftContentList =
    projectsList.where((element) => element % 2 == 0).toList();
var rightContentList =
    projectsList.where((element) => element % 2 != 0).toList();

Widget midSection() {
  // print('leftContentList: $leftContentList');
  // print('rightContentList: $rightContentList');

  return Container(
    alignment: Alignment.center,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: leftContentList.map((e) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 55),
                child: const ExpanderCard(
                  background: AppColors.mainPurple,
                  title: 'Redesign',
                  description:
                      'Lorem ipsum dolor sit amet consectetur. Est adipiscing neque adipiscing nunc dignissim cursus vitae. Vel consequat amet ',
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(width: 55),
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: rightContentList.map((e) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 55),
                child: const ExpanderCard(
                  background: AppColors.mainPurple,
                  title: 'Redesign',
                  description:
                      'Lorem ipsum dolor sit amet consectetur. Est adipiscing neque adipiscing nunc dignissim cursus vitae. Vel consequat amet ',
                ),
              );
            }).toList(),
          ),
        )
      ],
    ),
  );
}

// Widget content(void Function()? onPressIcon) {
//   return Row(
//     children: [
//       BlogCard(item: item),
//       const SizedBox(width: 30),
//       CircleIconButton(
//         onPressIcon: onPressIcon,
//         arrowDirection: ArrowDirection.right,
//       ),
//     ],
//   );
// }
