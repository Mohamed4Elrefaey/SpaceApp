import 'package:flutter/material.dart';
import 'package:space/core/ColorManager.dart';

import '../models/planetModel.dart';

class PageviewWidget extends StatelessWidget {
  final Planet planet;
  final VoidCallback next;

  final VoidCallback previous;

  PageviewWidget({required this.planet, required this.next, required this.previous});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 18),
        child: Container(
          child: Image.asset(planet.image!),
        )
      ),
    );
  }
}
