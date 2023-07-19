import 'package:betul_portfolio/components/header.dart';
import 'package:flutter/material.dart';

import 'package:betul_portfolio/design/app_colors.dart';

class TopSection extends StatelessWidget {
  final Widget? header;
  final Widget body;
  const TopSection({super.key, this.header, required this.body});

  @override
  Widget build(BuildContext context) {
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
                header ?? const Header(),
                body,
              ],
            ),
          ),
        )
      ],
    );
  }
}
