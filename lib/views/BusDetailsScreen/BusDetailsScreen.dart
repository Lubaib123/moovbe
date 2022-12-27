import 'package:flutter/material.dart';
import 'package:moovbe/consts/app_Colors.dart';
import 'package:moovbe/consts/app_images.dart';
import 'package:moovbe/utils/helper/helperwidegts.dart';

class BusDetailsPage extends StatelessWidget {
  const BusDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KSRTC Swift Scania P-​series'),
      ),
      body: Column(children: [
        DriverSelection("Rohit Sharma", "License no: PJ515196161655",
            driverImage, "", context),
        Container(
          margin: const EdgeInsets.fromLTRB(40, 10, 40, 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(13),
          ),
          height: 487,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 52, bottom: 11),
                child: Image.asset(driverSeatimg),
              ),
              BusSeatBuilder(false)
            ],
          ),
        )
      ]),
    );
  }
}
