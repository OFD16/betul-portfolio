import 'package:auto_route/auto_route.dart';
import 'package:betul_portfolio/design/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:betul_portfolio/design/app_colors.dart';

Widget headerWidget(context) {
  final appRouter = AutoRouter.of(context);
  Size size = MediaQuery.of(context).size;
  var horizontalPadding = (size.width - size.width * 0.77777777777) / 2;
  return Container(
    padding: const EdgeInsets.all(12),
    width: size.width,
    color: AppColors.lightGrey3.withOpacity(0.2),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
              width: 76,
              child: Text('Betul Ozkan',
                  softWrap: true, style: AppTextStyles.nameTitle)),
          TextButton(
            onPressed: () => {appRouter.navigateNamed('/MyProjects')},
            child:
                const Text('My Projects', style: AppTextStyles.menuItemStyle),
          ),
          TextButton(
            onPressed: () => {appRouter.navigateNamed('/MyBlogs')},
            child: const Text('My Blogs', style: AppTextStyles.menuItemStyle),
          ),
          TextButton(
            onPressed: () => {appRouter.navigateNamed('/About')},
            child: const Text('About', style: AppTextStyles.menuItemStyle),
          ),
          TextButton(
            onPressed: () => {appRouter.navigateNamed('/About')},
            child: const Text('Contact Me', style: AppTextStyles.menuItemStyle),
          ),
        ],
      ),
    ),
  );
}
