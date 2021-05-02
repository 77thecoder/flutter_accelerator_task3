import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final bool isIcon;
  final Icon icon;
  final Color borderColor;
  final Color textColor;
  final Color backgroundColor;

  const Button({
    Key? key,
    required this.text,
    required this.isIcon,
    required this.icon,
    required this.borderColor,
    required this.textColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(color: textColor),
          ),
          if (isIcon != null && isIcon) ...{
            const SizedBox(width: 12),
            icon
          },
        ],
      ),
    );
  }
}
