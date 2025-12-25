import 'package:flutter/material.dart';

import '../core/ColorManager.dart';

class SpecialText extends StatelessWidget {
  String text;

  SpecialText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Text(
        text,
        style: TextStyle(
          color: ColorManager.onPrimary,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
