import 'package:betul_portfolio/components/inline_hovarable_text.dart';
import 'package:betul_portfolio/design/app_text_styles.dart';
import 'package:flutter/material.dart';

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
