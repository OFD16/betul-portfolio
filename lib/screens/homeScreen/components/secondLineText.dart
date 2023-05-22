import 'package:flutter/material.dart';

import '../../../components/InlineHovarableText.dart';
import '../../../design/app_text_styles.dart';

Widget secondLineText() {
  return const Padding(
    padding: EdgeInsets.only(bottom: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'I am ',
              style: AppTextStyles.nameMidTitle,
            ),
            InlineHoverableText(text: 'UI/UX Designer'),
            Text(
              ' and also someone',
              style: AppTextStyles.nameMidTitle,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'who ',
              style: AppTextStyles.nameMidTitle,
            ),
            InlineHoverableText(text: 'writers'),
            Text(
              ' about design.',
              style: AppTextStyles.nameMidTitle,
            ),
          ],
        )
      ],
    ),
  );
}
