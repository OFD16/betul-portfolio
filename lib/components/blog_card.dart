import 'package:flutter/material.dart';

import '../design/app_colors.dart';
import '../design/app_text_styles.dart';
class BlogCard extends StatelessWidget {
  final Map<String, dynamic>? item;

  const BlogCard({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
        height: (screenSize.width * 0.69444444444) * 0.32,
        width: screenSize.width * 0.69444444444,
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          shape: BoxShape.rectangle,
          color: AppColors.lightGreen,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 224,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.network(
                    item?['image'] ??
                        'https://images.ctfassets.net/hrltx12pl8hq/7JnR6tVVwDyUM8Cbci3GtJ/bf74366cff2ba271471725d0b0ef418c/shutterstock_376532611-og.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 105),
            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item?['title'] ?? 'Başlık1',
                    style: AppTextStyles.cardBlogTitle,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    item?['description'] ??
                        'Lorem ipsum dolor sit amet consectetur. Velit semper dignissim lacus vel sit vehicula facilisis arcu pharetra. ömer ömer ömer ömer ömer  ömer  ömer  ömer  ömer  ömer  ömer  ömer  ömer  Turpis volutpat tristique nulla accumsan',
                    style: AppTextStyles.cardBlogDescription,
                    overflow: TextOverflow.ellipsis, // or TextOverflow.fade, TextOverflow.clip
                    maxLines: 4,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
