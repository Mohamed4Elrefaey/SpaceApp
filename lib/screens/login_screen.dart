import 'package:flutter/material.dart';
import 'package:space/core/AssetsManager.dart';
import 'package:space/core/ColorManager.dart';
import 'package:space/core/StringManager.dart';
import 'package:space/screens/home_screen.dart';
import 'package:space/widgets/elevatedBtn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = "loginScreen";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorManager.background,
      body: Container(
        alignment: Alignment.centerLeft,
        height: height,
        child: Stack(
          alignment: AlignmentGeometry.centerLeft,
          children: [
            Image.asset(AssetsManager.loginPlanet),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                StringManager.loginText,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 48,
                  color: ColorManager.onPrimary,
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 16,
                ),
                child: ElevatedBtn(text: StringManager.explore,onClick:(){
                  Navigator.of(context).pushNamed(HomeScreen.routeName);
                })
              ),
            ),
          ],
        ),
      ),
    );
  }
}
