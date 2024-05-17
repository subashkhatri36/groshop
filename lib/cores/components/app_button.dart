import 'package:flutter/material.dart';
import 'package:groshop/cores/ColorApp/app_color.dart';

class GroShopButton extends StatelessWidget {
  const GroShopButton(
    this.text, {
    super.key,
    this.backgroundColor,
    this.onPressed,
    this.fontSize = 20,
    this.fontColors,
    this.padding = 16.0,
  });
  final Color? backgroundColor;
  final Color? fontColors;
  final Function()? onPressed;
  final String text;
  final double fontSize;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: padding ?? 0,
      ),
      child: SizedBox(
        width: 148,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? backgroundButtonColor),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
              color: fontColors ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
