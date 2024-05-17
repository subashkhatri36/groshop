import 'package:flutter/material.dart';
import 'package:groshop/cores/ColorApp/app_color.dart';

class IndicatorWidget extends StatefulWidget {
  const IndicatorWidget(
      {super.key, required this.totalLength, required this.currentPostion});
  final int currentPostion;
  final int totalLength;

  @override
  State<IndicatorWidget> createState() => _IndicatorWidgetState();
}

class _IndicatorWidgetState extends State<IndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (widget.currentPostion < widget.totalLength)
            for (int i = 0; i < widget.totalLength; i++)
              i == widget.currentPostion
                  ? Container(
                      width: 60,
                      height: 10,
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                          color: blackColor,
                          borderRadius: BorderRadius.circular(20)),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: const CircleAvatar(
                        backgroundColor: blackColor,
                        radius: 6,
                      ),
                    ),
        ],
      ),
    );
  }
}
