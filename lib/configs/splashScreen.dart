import 'package:ayat/pages/Home.page.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
getSplashScreen(){
  return SplashScreenView(
    navigateRoute: Home(),
    duration: 3000,
    imageSize: 130,
    imageSrc: "images/ds.png",
    text: "أشهد أن لا إله إلا الله، وأشهد أن محمداً رسول الله",
    textType: TextType.TyperAnimatedText,
    textStyle: const TextStyle(
      color: Color(0xffFFE29D),
      fontSize: 30.0,
    ),
    backgroundColor: Color(0xff003D34),
  );
}
