import 'package:flutter/material.dart';

import '../../../design/app_text_styles.dart';

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
