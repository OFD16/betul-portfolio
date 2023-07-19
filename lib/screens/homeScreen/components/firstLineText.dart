import 'package:betul_portfolio/components/hovarable_text.dart';
import 'package:betul_portfolio/design/app_text_styles.dart';
import 'package:flutter/material.dart';

Widget firstLineText() {
  return const Padding(
    padding: EdgeInsets.only(bottom: 14),
    child: Row(
      children: [
        Text(
          'Hi, I am ',
          style: AppTextStyles.nameBigTitle,
        ),
        HoverableText(text: 'Betul Ozkan')
      ],
    ),
  );
}
