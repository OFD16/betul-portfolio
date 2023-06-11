import 'package:betul_portfolio/components/footer.dart';
import 'package:betul_portfolio/components/top_section.dart';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'components/bodyWidget.dart';
import 'components/midSection.dart';

@RoutePage()
class MyProjectsScreen extends StatefulWidget {
  const MyProjectsScreen({super.key});

  @override
  State<MyProjectsScreen> createState() => _MyProjectsScreenState();
}

class _MyProjectsScreenState extends State<MyProjectsScreen> {
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
            midSection(),
            const SizedBox(height: 240),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
