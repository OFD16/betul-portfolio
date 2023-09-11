import 'dart:async';

import 'package:betul_portfolio/components/hover_button.dart';
import 'package:betul_portfolio/design/app_colors.dart';
import 'package:betul_portfolio/design/app_text_styles.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class ExpanderCard extends StatefulWidget {
  final String title;
  final String description;
  final String? imageUrl;
  final Color? background;
  const ExpanderCard(
      {Key? key, required this.title, required this.description, this.imageUrl, this.background})
      : super(key: key);

  @override
  State<ExpanderCard> createState() => _ExpanderCardState();
}

class _ExpanderCardState extends State<ExpanderCard> {
  bool _isHovered = false;
  double containerHeight = 252;
  Timer? _exitTimer;

  @override
  void dispose() {
    _exitTimer?.cancel();
    super.dispose();
  }

  void onEnter(_) => setState(() {
        _isHovered = true;
        containerHeight = 571;
      });

  void onExit(_) {
    setState(() {
      _isHovered = false;
      containerHeight = 252;
    });

  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: onEnter,
      onExit: onExit,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedContainer(
            width: 462,
            height: containerHeight,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              shape: BoxShape.rectangle,
              color: widget.background ?? AppColors.exPink,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7),
                  spreadRadius: 2,
                  blurRadius: 0,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
            child: Stack(
              children: [
                Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: AnimatedOpacity(
                    opacity: _isHovered ? 1.0 : 0.0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    child: DelayedDisplay(
                      delay: const Duration(milliseconds: 1500),
                      fadingDuration: const Duration(milliseconds: 500),
                      slidingBeginOffset: const Offset(0.0, -0.2),
                      slidingCurve: Curves.easeInOut,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.title, style: AppTextStyles.cardTitle),
                          const SizedBox(height: 24),
                          Text(
                            widget.description,
                            style: AppTextStyles.expandedCardDescription,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                          const SizedBox(height: 55),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              HoverButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -45,
            left: 45,
            child: Container(
              width: 444,
              height: 252,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: NetworkImage(widget.imageUrl ??
                      'https://images.ctfassets.net/hrltx12pl8hq/7JnR6tVVwDyUM8Cbci3GtJ/bf74366cff2ba271471725d0b0ef418c/shutterstock_376532611-og.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
