import 'package:flutter/material.dart';

import '../core/ColorManager.dart';
import '../core/StringManager.dart';

class ElevatedBtn extends StatelessWidget {
  final String text;
  final VoidCallback onClick ;
  const ElevatedBtn({required this.text , required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
        padding: EdgeInsets.symmetric(vertical: 18),
      ),
      onPressed: onClick,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Text(
              text,
              style: TextStyle(
                color: ColorManager.onPrimary,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Icon(
              Icons.arrow_forward,
              color: ColorManager.onPrimary,
              size: 26,
            ),
          ),
        ],
      ),
    );
  }
}
