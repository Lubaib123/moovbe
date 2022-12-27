import 'package:flutter/material.dart';
import 'package:moovbe/consts/app_Colors.dart';
import 'package:moovbe/consts/app_images.dart';
import 'package:moovbe/consts/app_theme.dart';
import 'package:moovbe/utils/helper/helperwidegts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 300,
                  color: darkGrey,
                ),
                SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(redpolygon)),
                const Padding(
                  padding: EdgeInsets.fromLTRB(18, 160, 0, 0),
                  child: ListTile(
                    title: Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 41,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      "Manage your Bus and Drivers",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            height: 58,
            width: 321,
            decoration: textfield_decor(),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Username",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            height: 58,
            width: 321,
            decoration: textfield_decor(),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Password",
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Padding(
              padding: const EdgeInsets.all(42),
              child: RedButton("Login", 'BusList', context))
        ],
      ),
    );
  }
}



