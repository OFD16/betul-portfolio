import 'package:flutter/material.dart';

import 'package:betul_portfolio/design/app_colors.dart';

Widget topSection({required Widget header, required Widget body}) {
  return Stack(
    children: [
      Positioned.fill(
        child: Image.asset(
          "assets/images/pattern_image.png",
          repeat: ImageRepeat.repeat,
          color: AppColors.dotsColor,
        ),
      ),
      Center(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              header,
              body,
            ],
          ),
        ),
      )
    ],
  );
}
