import 'package:flutter/material.dart';

import '../../../design/app_text_styles.dart';
import '../../../components/HovarableText.dart';

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
