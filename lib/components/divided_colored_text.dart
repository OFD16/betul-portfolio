import 'package:betul_portfolio/design/app_colors.dart';
import 'package:betul_portfolio/design/app_text_styles.dart';
import 'package:flutter/material.dart';

class DividedColoredText extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final Color? firstColor;
  final Color? secondColor;
  const DividedColoredText(
      {super.key,
      required this.title,
      this.firstColor,
      this.secondColor,
      this.titleStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColor ?? Colors.transparent,
            secondColor ?? AppColors.mainRed
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.5, 0.5],
        ),
      ),
      child: Text(
        title,
        style: titleStyle ?? AppTextStyles.pageTitle,
      ),
    );
  }
}
