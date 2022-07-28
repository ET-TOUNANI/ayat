import 'package:ayat/pages/Home.page.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
getSplashScreen(){
  return SplashScreen(
      backgroundColor: Color(0xff003D34),
      seconds: 3,
      navigateAfterSeconds:Home(),
      title: const Text(
        'الله  اكبر',
        style: const TextStyle(
          color: Color(0xffFFE29D),
    fontSize: 30.0,
  ),
      ),
      image:  Image.asset('images/ds.png'),
      photoSize: 100.0,
      styleTextUnderTheLoader:  const TextStyle(),
      loaderColor: Color(0xffFFE29D)
  );
}
