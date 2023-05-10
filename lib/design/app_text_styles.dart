import 'package:betul_portfolio/design/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle nameSmallTitle = TextStyle(
    color: AppColors.darkGrey,
    fontFamily: 'Sansita',
    fontSize: 24,
    fontWeight: FontWeight.w700, // Set the font weight to 700
    height: 1.2, // Set the line height to 36.6 (30.3 * 1.2 = 36.6)
  );


  static const TextStyle nameTitle = TextStyle(
    color: Colors.black,
    fontFamily: 'Sansita',
    fontSize: 30,
    fontWeight: FontWeight.w700, // Set the font weight to 700
    height: 1.2, // Set the line height to 36.6 (30.3 * 1.2 = 36.6)
  );

  static const TextStyle nameMidTitle = TextStyle(
    color: Colors.black,
    fontFamily: 'Sansita',
    fontSize: 45.29,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static const TextStyle nameBigTitle = TextStyle(
    color: Colors.black,
    fontFamily: 'Sansita',
    fontSize: 70.86,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static const TextStyle menuItemStyle = TextStyle(
    color: Color(0xff4B4B4B),
    fontFamily: 'Sansita',
    fontSize: 24,
    fontWeight: FontWeight.w700, // Set the font weight to 700
    height: 1.2, // Set the line height to 36.6 (30.3 * 1.2 = 36.6)
  );
}