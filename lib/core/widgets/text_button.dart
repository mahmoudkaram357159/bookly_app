import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  const CommonTextButton(
      {super.key,
      required this.text,
      required this.textColor,
      this.size,
      required this.backgroundColor,
      this.borderRadius});
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double? size;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16),
              )),
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: size ?? 14,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
