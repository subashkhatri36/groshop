import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class ShadowText extends StatelessWidget {
  const ShadowText(this.data, {super.key, this.style, this.aign})
      : assert(data != null);

  final String data;
  final TextStyle? style;
  final TextAlign? aign;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        children: [
          Positioned(
            top: 2.0,
            left: 2.0,
            child: Text(
              data,
              style: style?.copyWith(
                color: Colors.black.withOpacity(0.27),
              ),
              textAlign: aign,
            ),
          ),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: Text(
              data,
              style: style,
              textAlign: aign,
            ),
          ),
        ],
      ),
    );
  }
}
