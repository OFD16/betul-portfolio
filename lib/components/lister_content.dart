import 'package:betul_portfolio/components/home_card.dart';
import 'package:flutter/material.dart';

import '../design/app_colors.dart';
import '../design/app_text_styles.dart';

class ListerContent extends StatelessWidget {
  final List? data;
  const ListerContent({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        childAspectRatio: 530 / 350, // width/height
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: data?.length,
      itemBuilder: (BuildContext context, int index) {
        final item = data?[index];
        return HomeCard(
          title: item?['title'],
          description: item?['description'],
          image: item?['image'],
        );
      },
    );
  }
}
