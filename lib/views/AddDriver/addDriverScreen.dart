import 'package:flutter/material.dart';
import 'package:moovbe/utils/helper/helperwidegts.dart';

class AddDriverScreen extends StatelessWidget {
  const AddDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Driver"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            textfieldwidget('Enter Name'),
            textfieldwidget('Enter License Number'),
            Spacer(
              flex: 2,
            ),
            RedButton("Save", 'DriverlistScreen', context),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
