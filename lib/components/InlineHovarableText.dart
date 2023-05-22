import 'package:flutter/material.dart';

import '../design/app_colors.dart';

class InlineHoverableText extends StatefulWidget {
  final String text;
  const InlineHoverableText({Key? key, required this.text}) : super(key: key);

  @override
  _InlineHoverableTextState createState() => _InlineHoverableTextState();
}

class _InlineHoverableTextState extends State<InlineHoverableText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Text(
        widget.text,
        style: _isHovered
            ? TextStyle(
                backgroundColor:
                    _isHovered ? AppColors.mainRed : Colors.transparent,
                fontSize: 45.29,
                fontFamily: 'Sansita',
                height: 1.2,
                color: Colors.black)
            : TextStyle(
                backgroundColor:
                    _isHovered ? AppColors.mainRed : Colors.transparent,
                fontSize: 45.29,
                fontFamily: 'Sansita',
                height: 1.2,
                foreground: Paint()
                  ..color = const Color(0xff000000)
                  ..strokeWidth = 1.4
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.miter),
      ),
    );
  }
}
