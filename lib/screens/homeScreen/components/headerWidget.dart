import 'package:flutter/material.dart';

import '../../../design/app_colors.dart';
import '../../../design/app_text_styles.dart';

Widget headerWidget(context) {
  Size size = MediaQuery.of(context).size;
  var horizontalPadding = (size.width - size.width * 0.77777777777) / 2;
  return Container(
    padding: const EdgeInsets.all(12),
    width: size.width,
    color: AppColors.lightGrey3.withOpacity(0.2),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
              width: 76,
              child: Text('Betul Ozkan',
                  softWrap: true, style: AppTextStyles.nameTitle)),
          TextButton(
            onPressed: () => {},
            child: const Text('My Project', style: AppTextStyles.menuItemStyle),
          ),
          TextButton(
            onPressed: () => {},
            child: const Text('My Blog', style: AppTextStyles.menuItemStyle),
          ),
          TextButton(
            onPressed: () => {},
            child: const Text('About', style: AppTextStyles.menuItemStyle),
          ),
          TextButton(
            onPressed: () => {},
            child: const Text('Contact Me', style: AppTextStyles.menuItemStyle),
          ),
        ],
      ),
    ),
  );
}
