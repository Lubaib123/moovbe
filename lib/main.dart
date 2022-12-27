import 'package:flutter/material.dart';
import 'package:moovbe/consts/app_theme.dart';
import 'package:moovbe/views/AddDriver/addDriverScreen.dart';
import 'package:moovbe/views/BusDetailsScreen/BusDetailsScreen.dart';
import 'package:moovbe/views/BusListScreen/busListScreen.dart';
import 'package:moovbe/views/LoginScreen/LoginScreen.dart';
import 'package:moovbe/views/driverlistScreen/DriverList_Screen.dart';
import 'package:moovbe/views/onboardScreen/OnboardScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Groccery App",
    theme: lightThemeData,
    initialRoute: 'onboardScreen',
    routes: {
      'onboardScreen': (context) => const OnBordingScreen(),
      'loginScreen': (context) => const LoginScreen(),
      'BusList': (context) => const BusList_Screen(),
      'BusDetailsScreen': (context) => const BusDetailsPage(),
      'DriverlistScreen': (context) => const DriverListScreen(),
      'AddDriverScreen': (context) => const AddDriverScreen()
    },
    //darkTheme: darkThemeData,
    //home: OnBordingScreen()
  ));
}
