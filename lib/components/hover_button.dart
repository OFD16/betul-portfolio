import 'package:betul_portfolio/design/app_colors.dart';
import 'package:betul_portfolio/design/app_text_styles.dart';
import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final void Function()? onTap;
  final String? title;
  final Color? onHoveredColor;
  final Color? defaultUnHovered;

  const HoverButton(
      {super.key,
      this.onTap,
      this.title,
      this.onHoveredColor,
      this.defaultUnHovered});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: _isHovered
                ? (widget.onHoveredColor ?? AppColors.onHovered)
                : (widget.defaultUnHovered ?? AppColors.defaultUnHovered),
          ),
          child: Text(
            widget.title ?? 'More Detail',
            style: AppTextStyles.hoverButtonStyle,
          ),
        ),
      ),
    );
  }
}
