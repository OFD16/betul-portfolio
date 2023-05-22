import 'package:betul_portfolio/design/app_colors.dart';
import 'package:flutter/material.dart';

import 'components/bodyWidget.dart';
import 'components/headerWidget.dart';
import 'components/midSection.dart';
import 'components/topSectionWidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FittedBox(
              child: topSection(
            header: headerWidget(context),
            body: bodyWidget(context),
          )),
          const SizedBox(height: 20),
          midSection(context),
        ],
      ),
    );
  }
}
