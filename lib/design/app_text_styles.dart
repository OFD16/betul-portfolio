import 'package:betul_portfolio/design/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle menuItemStyle = TextStyle(
    color: Color(0xff4B4B4B),
    fontFamily: 'Sansita',
    fontSize: 24,
    fontWeight: FontWeight.w700, // Set the font weight to 700
    height: 1.2, // Set the line height to 36.6 (30.3 * 1.2 = 36.6)
  );

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

  static const TextStyle cardBlogTitle = TextStyle(
    color: Colors.black,
    fontFamily: 'Sansita',
    fontSize: 32,
    fontWeight: FontWeight.w700, // Set the font weight to 700
    height: 1.2, // Set the line height to 36.6 (30.3 * 1.2 = 36.6)
  );

  static const TextStyle cardTitle = TextStyle(
    color: Colors.black,
    fontFamily: 'Sansita',
    fontSize: 36,
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

  static const TextStyle cardDescription = TextStyle(
    color: Colors.black,
    fontFamily: 'OpenSans',
    fontSize: 24,
    fontWeight: FontWeight.w400, // Set the font weight to 700
    height: 1.2, // Set the line height to 36.6 (30.3 * 1.2 = 36.6)
  );

  static const TextStyle cardBlogDescription = TextStyle(
    color: Colors.black,
    fontFamily: 'OpenSans',
    fontSize: 20,
    fontWeight: FontWeight.w400, // Set the font weight to 700
    height: 27.24 / 20, // Set the line height to 27.24 (20* a = 27.24)
  );
}
