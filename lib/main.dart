import 'package:ayat/pages/Azkar.page.dart';
import 'package:ayat/pages/Home.page.dart';
import 'package:ayat/pages/awkatSalat.page.dart';
import 'package:ayat/pages/aya.page.dart';
import 'package:ayat/pages/quran.page.dart';
import 'package:flutter/material.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=> Home(),
        "/aya":(context)=> Aya(),
        "/quran":(context)=> Quran(),
        "/azkar":(context)=> Azkar(),
      },
    );
  }
}
