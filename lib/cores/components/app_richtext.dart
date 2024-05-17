import 'package:flutter/material.dart';
import 'package:groshop/cores/components/shadow_text.dart';

class MultiTextClass {
  MultiTextClass({required this.textWidget, this.onPressed});
  final ShadowText textWidget;
  final Function()? onPressed;
}

class MultiColorText extends StatelessWidget {
  MultiColorText({super.key, required this.data});
  List<MultiTextClass> data;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: data
          .map((t) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: InkWell(
                  onTap: t.onPressed,
                  child: t.textWidget,
                ),
              ))
          .toList(),
    );
  }
}
