import 'package:auto_route/auto_route.dart';
import 'package:betul_portfolio/design/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:betul_portfolio/design/app_colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
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
            TextButton(
              onPressed: () => {appRouter.navigateNamed('/Home')},
              child: const Text('Betul\nOzkan',
                  softWrap: true, style: AppTextStyles.nameTitle),
            ),
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
              child:
                  const Text('Contact Me', style: AppTextStyles.menuItemStyle),
            ),
          ],
        ),
      ),
    );
  }
}


    // var tabs = [
    //   {
    //     'name': 'Betul\nOzkan',
    //     'route': '/Home',
    //     'softWrap': true,
    //     'style': AppTextStyles.nameTitle
    //   },
    //   {
    //     'name': 'My Projects',
    //     'route': '/MyProjects',
    //     'softWrap': false,
    //     'style': AppTextStyles.menuItemStyle
    //   },
    //   {
    //     'name': 'My Blogs',
    //     'route': '/MyBlogs',
    //     'softWrap': true,
    //     'style': AppTextStyles.menuItemStyle
    //   },
    //   {
    //     'name': 'About',
    //     'route': '/About',
    //     'softWrap': true,
    //     'style': AppTextStyles.menuItemStyle
    //   },
    //   {
    //     'name': 'Contact Me',
    //     'route': '/ContactMe',
    //     'softWrap': true,
    //     'style': AppTextStyles.menuItemStyle
    //   }
    // ];



    // Widget tabButton({name, route, softWrap, style}) => TextButton(
    //       onPressed: () => {appRouter.navigateNamed(name)},
    //       child: Text(name,
    //           softWrap: softWrap, style: style | AppTextStyles.menuItemStyle),
    //     );


    //         tabs.map((e) {
    //         return tabButton(
    //           name: e['name'],
    //           route: e['route'],
    //           softWrap: e['softWrap'],
    //           style: e['style'],
    //         );
    //       }).toList(), // Convert the Iterable to a List