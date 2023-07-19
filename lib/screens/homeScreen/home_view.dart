import 'package:auto_route/auto_route.dart';

import 'package:betul_portfolio/components/footer.dart';
import 'package:betul_portfolio/components/top_section.dart';
import 'package:flutter/material.dart';

import 'components/bodyWidget.dart';
import 'components/midSection.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FittedBox(
                child: TopSection(
              body: bodyWidget(context),
            )),
            const SizedBox(height: 20),
            midSection(context),
            const SizedBox(height: 240),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
