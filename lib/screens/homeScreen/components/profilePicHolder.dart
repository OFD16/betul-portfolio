import 'package:flutter/material.dart';

import '../../../design/app_colors.dart';

Widget profilePicHolder() {
  return Container(
    width: 158,
    height: 245,
    decoration: BoxDecoration(
      color: AppColors.lightBlack,
      border: Border.all(
        color: Colors.black, // Set the border color here
        width: 3.0, // Set the border height here
      ),
    ),
  );
}
