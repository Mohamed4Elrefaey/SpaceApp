import 'package:flutter/material.dart';
import 'package:space/core/AssetsManager.dart';
import 'package:space/core/StringManager.dart';
import 'package:space/models/planetModel.dart';
import 'package:space/widgets/special_text.dart';

import '../core/ColorManager.dart';

class PlanetDetails extends StatelessWidget {
  PlanetDetails({super.key});

  static const routeName = "Details";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    final Planet _planet = ModalRoute.of(context)!.settings.arguments as Planet;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ColorManager.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        leading: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(43),
          ),
          backgroundColor: ColorManager.primary,
          onPressed: () {
            Navigator.of(context).pop(context);
          },
          child: Icon(Icons.arrow_back, color: ColorManager.onPrimary),
        ),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.20,
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.asset(
                      AssetsManager.headerPhoto,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            ColorManager.background,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        _planet.planetName,
                        style: TextStyle(
                          color: ColorManager.onPrimary,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          _planet.title,
                          style: TextStyle(
                            color: ColorManager.onPrimary,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      child: Image.asset(_planet.image),
                    ),
                    SizedBox(height: 20),
                    Text(
                      StringManager.about,
                      style: TextStyle(
                        color: ColorManager.onPrimary,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        _planet.about,
                        style: TextStyle(
                          color: ColorManager.onPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SpecialText(
                      text:
                          StringManager.distanceFromSun +
                          _planet.distanceFromSun,
                    ),
                    SpecialText(
                      text: StringManager.lengthOfDay + _planet.lengthOfDay,
                    ),
                    SpecialText(
                      text:
                          StringManager.orbitalPeriod + _planet.orbitalPeriod,
                    ),
                    SpecialText(text: StringManager.mass + _planet.mass),
                    SpecialText(
                      text: StringManager.gravity + _planet.gravity,
                    ),
                    SpecialText(
                      text: StringManager.surface + _planet.surfaceArea,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
