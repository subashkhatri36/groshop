import 'package:flutter/material.dart';

class GroShopIconButton extends StatelessWidget {
  const GroShopIconButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);
  final Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton.icon(
        style:
            ElevatedButton.styleFrom(backgroundColor: const Color(0xFFC8BA2D)),
        iconAlignment: IconAlignment.end,
        icon: const Row(
          children: [
            Icon(Icons.arrow_forward_ios, color: Colors.black12),
            Icon(Icons.arrow_forward_ios, color: Colors.black38),
            Icon(Icons.arrow_forward_ios, color: Colors.black87),
          ],
        ),
        onPressed: onPressed,
        label: Text(
          label,
          style: const TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
