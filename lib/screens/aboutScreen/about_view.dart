import 'package:auto_route/auto_route.dart';
import 'package:betul_portfolio/components/top_section.dart';
import 'package:betul_portfolio/screens/aboutScreen/components/bodyWidget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
            const SizedBox(height: 90),
            // midSection(),
            // const SizedBox(height: 240),
            // const Footer(),
          ],
        ),
      ),
    );
  }
}
