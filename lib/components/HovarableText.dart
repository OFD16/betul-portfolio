import 'package:flutter/material.dart';

import '../design/app_colors.dart';

class HoverableText extends StatefulWidget {
  final String text;

  const HoverableText({required this.text, Key? key}) : super(key: key);

  @override
  _HoverableTextState createState() => _HoverableTextState();
}

class _HoverableTextState extends State<HoverableText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Text(
        widget.text,
        style: TextStyle(
          backgroundColor:
              _isHovered ? AppColors.mainYellow : Colors.transparent,
          color: Colors.black,
          fontFamily: 'Sansita',
          fontSize: 70.86,
          fontWeight: FontWeight.w700,
          height: 1.23384137736,
        ),
      ),
    );
  }
}
