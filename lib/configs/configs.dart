import 'dart:async';

import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timer_builder/timer_builder.dart';
getFront(n) {
  return Container(
    width: double.infinity,
    height: 200,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("images/1.png"), fit: BoxFit.fitWidth),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image(
          image: AssetImage("images/$n.png"),
          height: 120,
        ),
      ],
    ),
  );
}

getTime() {
  return Container(
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/1.png"), fit: BoxFit.fitWidth),
      ),
      child:
          TimerBuilder.periodic(const Duration(seconds: 1), builder: (context) {
        var currentTime = DateTime.now();
        return Center(
            child: Text(
          "\n\n\n${(currentTime.hour < 10) ? "0${currentTime.hour}" : currentTime.hour} : ${(currentTime.minute < 10) ? "0${currentTime.minute}" : currentTime.minute} : ${(currentTime.second < 10) ? "0${currentTime.second}" : currentTime.second}",
          style: const TextStyle(
              color: Color(0xffFFE29D),
              fontWeight: FontWeight.bold,
              fontSize: 40),
        ));
      }) // button text
      );
}

getAppBar() {
  return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff045448), Color(0xff002822)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Image(
              image: AssetImage("images/d.png"),
              height: 30,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings_suggest,
                  color: Color(0xffFFE29D),
                )),
          ],
        ),
      ));
}
getContainer(context,name,next){
  //if(next!=10&&next!=20&&next!=30&&next!=40&&next!=50&&next!=60&&next!=70&&next!=80&&next!=90&&next!=100&&next!=0){
    return Container(
      height: MediaQuery.of(context).size.height /10,
      width: MediaQuery.of(context).size.width ,
      padding: EdgeInsets.all(15),
      child: Material(
        color: const Color(0xff002822),
        elevation: 8,
        child: InkWell(
          splashColor: Colors.black26,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>next));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$name",
                style: TextStyle(fontSize: 19, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
Future<List<double>> getLocation() async {
  late Position position;

  double long = 0, lat = 0;
  position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  long = position.longitude;
  lat = position.latitude;

  LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high, //accuracy of the location data
    distanceFilter: 100, //minimum distance (measured in meters) a
    //device must move horizontally before an update event is generated;
  );
  Geolocator.getPositionStream(locationSettings: locationSettings)
      .listen((Position position) {
    long = position.longitude;
    lat = position.latitude;
  });
  return [lat, long];
}

List<Map> awkat(DateTime fajr, DateTime chorok, DateTime dohr, DateTime aser,
    DateTime maghrib, DateTime isha,f) {
  return [
    {
      'f':f,
      'time':
          '${(fajr.hour < 10) ? '0${fajr.hour}' : fajr.hour} : ${(fajr.minute < 10) ? '0${fajr.minute}' : fajr.minute}',
      'name': 'الفجر'
    },
    {
      'time':
          '${(chorok.hour < 10) ? '0${chorok.hour}' : chorok.hour} : ${(chorok.minute < 10) ? '0${chorok.minute}' : chorok.minute}',
      'name': 'الشروق'
    },
    {
      'time':
          '${(dohr.hour < 10) ? '0${dohr.hour}' : dohr.hour} : ${(dohr.minute < 10) ? '0${dohr.minute}' : dohr.minute}',
      'name': 'الضهر'
    },
    {
      'time':
          '${(aser.hour < 10) ? '0${aser.hour}' : aser.hour} : ${(aser.minute < 10) ? '0${aser.minute}' : aser.minute}',
      'name': 'العصر'
    },
    {
      'time':
          '${(maghrib.hour < 10) ? '0${maghrib.hour}' : maghrib.hour} : ${(maghrib.minute < 10) ? '0${maghrib.minute}' : maghrib.minute}',
      'name': 'المغرب'
    },
    {
      'time':
          '${(isha.hour < 10) ? '0${isha.hour}' : isha.hour} : ${(isha.minute < 10) ? '0${isha.minute}' : isha.minute} ',
      'name': 'العشاء'
    }
  ];
}

Future<bool> checkGps() async {
  var status = await Permission.location.status;
  if (!status.isGranted) {
    await Permission.location.request();
  }
  if (await Permission.location.request().isGranted) {
    return true;
  }
  return false;
}

List<dynamic> getSalawat(double lat, double long) {
  final myCoordinates =
      Coordinates(lat, long); // Replace with your own location lat, lng.
  final params = CalculationMethod.muslim_world_league.getParameters();
  params.madhab = Madhab.hanafi;
  final prayerTimes = PrayerTimes.today(myCoordinates, params);

  return [
    prayerTimes.fajr,
    prayerTimes.sunrise,
    prayerTimes.dhuhr,
    prayerTimes.asr,
    prayerTimes.maghrib,
    prayerTimes.isha,
    prayerTimes.nextPrayer().name
  ];
}
