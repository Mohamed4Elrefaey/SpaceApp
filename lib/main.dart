import 'package:flutter/material.dart';
import 'package:space/screens/home_screen.dart';
import 'package:space/screens/login_screen.dart';
import 'package:space/screens/planet_details.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: LoginScreen.routeName,
    routes: {
      LoginScreen.routeName : (context)=>LoginScreen(),
      HomeScreen.routeName : (context)=> HomeScreen(),
      PlanetDetails.routeName : (context) => PlanetDetails()
    },

  ));
}


