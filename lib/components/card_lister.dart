import 'package:flutter/material.dart';

import '../design/app_colors.dart';
import '../design/app_text_styles.dart';

class CardLister extends StatefulWidget {
  final Widget? content;
  final BoxDecoration? decoration;
  final String? title;
  final TextStyle? titleStyle;
  final List<Color>? titleBackgroundColors;
  final EdgeInsetsGeometry? mainAxis;
  final double? positionTop;
  final double? positionLeft;
  late  bool isRight;
  late  bool? isRightConjoined;
  late  bool? isLeftConjoined;
  CardLister(
      {Key? key,
      this.content,
      this.decoration,
      this.title,
      this.titleStyle,
      this.titleBackgroundColors,
      this.mainAxis,
      this.positionLeft,
      this.positionTop,
      required this.isRight,
      this.isLeftConjoined,
      this.isRightConjoined})
      : super(key: key);

  @override
  State<CardLister> createState() => _CardListerState();
}

class _CardListerState extends State<CardLister> {
  @override
  void setState(VoidCallback fn) {
    if(widget.isRight != null){
      widget.isRight = false;
    }
    if(widget.isLeftConjoined != null){
      widget.isLeftConjoined = false;
    }
    if(widget.isRightConjoined != null){
      widget.isRightConjoined = false;
    }
  }
  @override
  Widget build(BuildContext context) {
    Color starterColor =
        widget.titleBackgroundColors?[0] ?? AppColors.mainBackground;
    Color finishColor =
        widget.titleBackgroundColors?[1] ?? AppColors.mainBackground;

   /* BorderSide borderSide = const BorderSide(
        color: Colors.black, width: 2.0, style: BorderStyle.solid);
    BorderRadius defaultBorderRadius = BorderRadius.circular(20);
    BorderRadius leftConjoinedBorderRadius = const BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20));
    BorderRadius rightConjoinedBorderRadius = const BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20));

    Border defaultBorder = Border(
      left: borderSide,
      top: borderSide,
      bottom: borderSide,
      right: borderSide,
    );
    Border rightConjoined = Border(
      left: borderSide,
      top: borderSide,
      bottom: borderSide,
    );
    Border leftConjoined = Border(
      top: borderSide,
      bottom: borderSide,
      right: borderSide,
    );
    Border displayedBorder;
    BorderRadius displayedRadius;
    if (widget.isRightConjoined == true) {
      displayedBorder = rightConjoined;
      displayedRadius = rightConjoinedBorderRadius;
    } else if (widget.isLeftConjoined == true) {
      displayedBorder = leftConjoined;
      displayedRadius = leftConjoinedBorderRadius;
    } else {
      displayedBorder = defaultBorder;
      displayedRadius = defaultBorderRadius;
    }*/
    /*Border displayedBorder = widget.decoration ?? (widget.isRightConjoined != false ? rightConjoined : (widget.isLeftConjoined != false ? leftConjoined : defaultBorder) ) ;*/

    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: widget.mainAxis ?? const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          decoration: widget.decoration ??
              BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                shape: BoxShape.rectangle,
                color: AppColors.mainBackground,
              ),
          child: SingleChildScrollView(
            child: widget.content,
          ),
        ),
        Positioned(
          left: widget.isRight ? null : widget.positionLeft ?? 50,
          right: widget.isRight ? widget.positionLeft ?? 50 : null,
          top: widget.positionTop ?? 0,
          child: Container(
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [starterColor, finishColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.5, 0.5],
              ),
            ),
            child: Text(
              widget.title ?? 'title of the Card',
              style: widget.titleStyle ?? AppTextStyles.nameTitle,
            ),
          ),
        ),
      ],
    );
  }
}
