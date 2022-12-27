import 'package:flutter/material.dart';
import 'package:moovbe/consts/app_images.dart';
import 'package:moovbe/utils/helper/helperwidegts.dart';

//int drivercount = 21;

class DriverListScreen extends StatelessWidget {
  const DriverListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int drivercount = 21;
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('$drivercount Drivers found'),
            Container(
              height: 600,
              child: SingleChildScrollView(
                child: ListView.builder(
                    itemCount: drivercount,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return DriverListTile();
                    }),
              ),
            ),
            RedButton("Add Driver", "AddDriverScreen", context)
          ],
        ),
      ),
    );
  }
}
