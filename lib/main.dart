import 'package:ayat/pages/Azkar.page.dart';
import 'package:ayat/pages/Doae.page.dart';
import 'package:ayat/pages/Hijri.page.dart';
import 'package:ayat/pages/Home.page.dart';
import 'package:ayat/pages/MapsLocation.page.dart';
import 'package:ayat/pages/Qiblat.page.dart';
import 'package:ayat/pages/Test.dart';
import 'package:ayat/pages/about.dart';
import 'package:ayat/pages/aya.page.dart';
import 'package:ayat/pages/quran.page.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'configs/splashScreen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=> Home(),
        "/aya":(context)=> Aya(),
        "/test":(context)=> Test(),
        "/quran":(context)=> Quran(),
        "/azkar":(context)=> Azkar(),
        "/splash":(context)=> getSplashScreen(),
        "/doae":(context)=>  Doae(),
        "/hijri":(context)=>  Hijri(),
        "/qibla":(context)=>  Qiblat(),
        "/location":(context)=>  MapLocation(),
        "/about":(context)=>  About(),
      },
      initialRoute: "/splash",
    );
  }
}

