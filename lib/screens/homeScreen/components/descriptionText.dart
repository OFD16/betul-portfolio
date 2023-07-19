import 'package:betul_portfolio/design/app_text_styles.dart';
import 'package:flutter/material.dart';

Widget descriptionText({required String description}) {
  return SizedBox(
    width: 800,
    child: Text(
      description,
      softWrap: true,
      style: AppTextStyles.nameSmallTitle,
    ),
  );
}
