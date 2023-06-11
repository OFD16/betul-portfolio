import 'package:flutter/material.dart';

import '../types/arrow_direction.dart';

class CircleIconButton extends StatefulWidget {
  final void Function()? onPressIcon;
  final ArrowDirection arrowDirection;
  final double? iconSize;
  const CircleIconButton(
      {required this.onPressIcon,
      required this.arrowDirection,
      Key? key,
      this.iconSize})
      : super(key: key);

  @override
  State<CircleIconButton> createState() => _CircleIconButtonState();
}

class _CircleIconButtonState extends State<CircleIconButton> {
  IconData? iconDirection(ArrowDirection direction) {
    if (direction == ArrowDirection.down) {
      return Icons.keyboard_arrow_down_sharp;
    } else if (direction == ArrowDirection.up) {
      return Icons.keyboard_arrow_up_sharp;
    } else if (direction == ArrowDirection.right) {
      return Icons.keyboard_arrow_right_sharp;
    } else {
      return Icons.keyboard_arrow_left_sharp;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: widget.onPressIcon,
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2)),
          child: Icon(
            iconDirection(widget.arrowDirection),
            size: widget.iconSize ?? 28,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
