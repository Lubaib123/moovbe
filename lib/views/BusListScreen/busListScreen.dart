import 'package:flutter/material.dart';
import 'package:moovbe/consts/app_Colors.dart';
import 'package:moovbe/consts/app_images.dart';
import 'package:moovbe/utils/helper/helperwidegts.dart';

class BusList_Screen extends StatelessWidget {
  const BusList_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    int buscount = 21;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title:
              SizedBox(height: 41.72, width: 126.23, child: Image.asset(logo)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SelectionTile(
                "Bus",
                "Manage your Bus",
                busimage,
                'BusDetailsScreen',
                context,
              ),
              SelectionTile("Driver", "Manage your Driver ", driverImage,
                  'DriverlistScreen', context),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$buscount Bus found'),
          ),
          Container(
            height: 450,
            child: SingleChildScrollView(
              child: ListView.builder(
                  itemCount: buscount,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return BusListTile(context);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
