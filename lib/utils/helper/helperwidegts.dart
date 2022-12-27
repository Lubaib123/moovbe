import 'package:flutter/material.dart';
import 'package:moovbe/consts/app_Colors.dart';
import 'package:moovbe/consts/app_images.dart';
import 'package:moovbe/consts/app_theme.dart';

Widget SelectionTile(
  String title,
  subtitle,
  image,
  pagename,
  BuildContext context,
) {
  return Padding(
    padding: EdgeInsets.fromLTRB(25, 20, 0, 20),
    child: InkWell(
      onTap: () async {
        await Navigator.pushNamed(context, pagename);
      },
      child: Container(
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(16)),
          height: 178,
          width: 156,
          child: Column(children: [
            ListTile(
              title: Text(
                title,
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 102, width: 160, child: Image.asset(image))
          ])),
    ),
  );
}

Widget DriverSelection(
  String title,
  subtitle,
  image,
  pagename,
  BuildContext context,
) {
  return InkWell(
    onTap: () async {
      await Navigator.pushNamed(context, pagename);
    },
    child: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: darkGrey, borderRadius: BorderRadius.circular(16)),
        height: 130,
        width: double.infinity,
        child: Row(children: [
          SizedBox(
            height: 120,
            width: 180,
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 102, width: 160, child: Image.asset(image))
        ])),
  );
}

ListView BusSeatBuilder(bool seat2X2) {
  return ListView.builder(
      shrinkWrap: true,
      itemCount: 9,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(11.0),
          child: SizedBox(
              width: 210,
              height: 23,
              child: Image.asset(seat2X2 ? seat2X2img : seat1x3img)),
        );
      });
}

Widget DriverListTile() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 248, 248),
          backgroundImage: AssetImage(driverImage),
          radius: 25,
        ),
        trailing: SizedBox(
            height: 30,
            width: 70,
            child: ElevatedButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {},
                child: Text("Delete"))),
        title: Text("Rohit Sharma"),
        subtitle: Text(
          "License no: PJ515196161655",
          style: TextStyle(fontSize: 12),
        ),
      ),
    ),
  );
}

SizedBox RedButton(
    String buttontitle, navigationAddress, BuildContext context) {
  return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, navigationAddress);
        },
        child: Text(buttontitle,
            style: TextStyle(
              fontSize: 20,
            )),
      ));
}

Widget textfieldwidget(String buttontitle) {
  return Container(
    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    height: 58,
    width: double.infinity,
    decoration: textfield_decor(),
    child: TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: buttontitle,
      ),
    ),
  );
}

Widget BusListTile(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 248, 248),
          backgroundImage: AssetImage(Scania),
          radius: 25,
        ),
        trailing: SizedBox(
            height: 30,
            width: 70,
            child: ElevatedButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'BusDetailsScreen');
                },
                child: Text("Manage"))),
        title: Text("KSRTC "),
        subtitle: Text(
          "Swift Scania P-​series",
          style: TextStyle(fontSize: 12),
        ),
      ),
    ),
  );
}
