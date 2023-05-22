
import 'package:flutter/material.dart';

import '../design/app_colors.dart';
import '../design/app_text_styles.dart';

Widget cardListerWidget(
    {Widget? content,
      BoxDecoration? decoration,
      String? title,
      TextStyle? titleStyle,
      List<Color>? titleBackgroundColors,
      EdgeInsetsGeometry? mainAxis,
      double? positionTop,
      double? positionLeft,
      bool isRight = false}) {
  Color starterColor = titleBackgroundColors?[0] ?? AppColors.mainBackground;
  Color finishColor = titleBackgroundColors?[1] ?? AppColors.lightGrey4;

  return Stack(
    children: <Widget>[
      Container(
        width: double.infinity,
        margin: mainAxis ?? const EdgeInsets.all(20),
        padding: const EdgeInsets.all(30),
        decoration: decoration ??
            BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              shape: BoxShape.rectangle,
              color: finishColor,
            ),
        child: SingleChildScrollView(
          child: content,
        ),
      ),
      Positioned(
        left: isRight ? null : positionLeft ?? 50,
        right: isRight ? positionLeft ?? 50 : null,
        top: positionTop ?? 0,
        child: Container(
          padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [starterColor, finishColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.5],
            ),
          ),
          child: Text(
            title ?? 'title of the Card',
            style: titleStyle ?? AppTextStyles.nameTitle,
          ),
        ),
      ),
    ],
  );
}