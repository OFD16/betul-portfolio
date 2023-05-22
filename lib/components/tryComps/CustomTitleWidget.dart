import 'package:flutter/material.dart';

import '../../design/app_text_styles.dart';
import 'CustomDraw.dart';

class CustomTitleWidget extends StatefulWidget {
  final double height;
  final double width;
  final double? radius;
  final String title;
  const CustomTitleWidget(
      {Key? key,
      required this.height,
      required this.width,
      required this.title,
      this.radius})
      : super(key: key);

  @override
  State<CustomTitleWidget> createState() => _CustomTitleWidgetState();
}

class _CustomTitleWidgetState extends State<CustomTitleWidget> {
  GlobalKey textKey = GlobalKey();
  double textHeight = 0.0;
  double textWidth = 0.0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        final textKeyContext = textKey.currentContext;
        if (textKeyContext != null) {
          final box = textKeyContext.findRenderObject() as RenderBox;
          textHeight = box.size.height;
          textWidth = box.size.width;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        CustomPaint(
          painter: CustomDraw(
            Colors.black,
            textWidth,
            radius: widget.radius ?? 0,
          ),
          child: SizedBox(
            height: widget.height,
            width: widget.width,
          ),
        ),
        Positioned(
          top: -textHeight / 2,
          left: 60,
          child: Padding(
            key: textKey,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.title,
                style: AppTextStyles.nameTitle,
              ),
            ),
          ),
        )
      ],
    );
  }
}
