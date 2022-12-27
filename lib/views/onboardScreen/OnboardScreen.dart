import 'package:flutter/material.dart';
import 'package:moovbe/consts/app_Colors.dart';
import 'package:moovbe/consts/app_images.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onboardBackgroundColor,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 3,
              child: Center(
                  child: SizedBox(width: 250, child: Image.asset(logo)))),
          Padding(
            padding: const EdgeInsets.all(42),
            child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, 'loginScreen');
                  },
                  child: Text("Get Started",
                      style: TextStyle(
                          fontSize: 20, color: onboardBackgroundColor)),
                )),
          )
        ],
      ),
    );
  }
}
