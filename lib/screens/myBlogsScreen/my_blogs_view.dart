import 'package:betul_portfolio/components/footer.dart';
import 'package:betul_portfolio/components/top_section.dart';
import 'package:betul_portfolio/screens/myBlogsScreen/components/bodyWidget.dart';
import 'package:betul_portfolio/screens/myBlogsScreen/components/midSection.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MyBlogsScreen extends StatefulWidget {
  const MyBlogsScreen({super.key});

  @override
  State<MyBlogsScreen> createState() => _MyBlogsScreenState();
}

class _MyBlogsScreenState extends State<MyBlogsScreen> {
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
            midSection(),
            const SizedBox(height: 240),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
