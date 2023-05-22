import 'package:flutter/material.dart';

import '../design/app_colors.dart';
import '../design/app_text_styles.dart';

class ListerContent extends StatelessWidget {
  final List? data;
  const ListerContent({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget renderItem({dynamic item}) {
      return Stack(
        children: <Widget>[
          Container(
              width: double.infinity,
              height:  double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    spreadRadius: 2,
                    blurRadius: 0,
                    offset: const Offset(4, 4),
                  ),
                ],
                shape: BoxShape.rectangle,
                color: AppColors.lightGreen,
              ),
              child: Column(
                children: [
                  Container(
                    height: 195,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
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
                  const SizedBox(height: 20),
                  Text(
                    item?['description'] ??
                        'Lorem ipsum dolor sit amet consectetur. Velit semper dignissim lacus vel sit vehicula facilisis arcu pharetra. ömer ömer ömer ömer ömer  ömer  ömer  ömer  ömer  ömer  ömer  ömer  ömer  Turpis volutpat tristique nulla accumsan',
                    style: AppTextStyles.cardDescription,
                    overflow: TextOverflow.ellipsis, // or TextOverflow.fade, TextOverflow.clip
                    maxLines: 4,
                  ),
                ],
              )),
          Positioned(
            left: 50,
            top: -2,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.mainBackground, AppColors.lightGreen],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0.5],
                ),
              ),
              child: const Text(
                'Redisgn',
                style: AppTextStyles.cardTitle,
              ),
            ),
          ),
        ],
      );
    }
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
        return renderItem(item: item);
      },
    );
  }
}
