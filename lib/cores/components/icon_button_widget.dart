import 'package:flutter/material.dart';
import 'package:groshop/cores/ColorApp/app_color.dart';
import 'package:groshop/cores/dimension/dimension.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key? key,
    this.onPressed,
    this.iconColor,
    this.icon,
  }) : super(key: key);
  final Function()? onPressed;
  final Color? iconColor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      // padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.all(1),
          padding: const EdgeInsets.all(smallSpacing),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.9,
                  0.1,
                ],
                colors: [
                  backgroundGradientOneColor,
                  backgroundGradientTwoColor,
                ],
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: iconColor ?? Colors.black54,
                    offset: const Offset(1, 1))
              ]),
          child: icon == null
              ? Icon(
                  Icons.search,
                  color: iconColor,
                )
              : Icon(
                  icon,
                  color: iconColor,
                ),
        ),
      ),
    );
  }
}
