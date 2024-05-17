import 'package:flutter/material.dart';
import 'package:groshop/cores/ColorApp/app_color.dart';

class GroshopPage extends StatefulWidget {
  const GroshopPage(
    this.body, {
    super.key,
    this.padding,
    this.vpadding,
  });
  final Widget body;
  final double? padding;
  final double? vpadding;

  @override
  State<GroshopPage> createState() => _GroshopPageState();
}

class _GroshopPageState extends State<GroshopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
          child: Container(
              padding: widget.padding == null
                  ? null
                  : EdgeInsets.symmetric(
                      horizontal: widget.padding ?? 0,
                      vertical: widget.vpadding ?? 0,
                    ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.5,
                  ],
                  colors: [
                    backgroundGradientOneColor,
                    backgroundGradientTwoColor,
                  ],
                ),
              ),
              child: widget.body)),
    );
  }
}
