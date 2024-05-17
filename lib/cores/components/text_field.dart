import 'package:flutter/material.dart';
import 'package:groshop/cores/ColorApp/app_color.dart';
import 'package:groshop/cores/dimension/dimension.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    this.controller,
    this.onChanged,
  });
  final TextEditingController? controller;
  final Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: mediumSpacing, top: 5),
        child: TextFormField(
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            fillColor: inputBackgroundColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ));
  }
}
