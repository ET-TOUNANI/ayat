import 'package:ayat/pages/Home.page.dart';
import 'package:flutter/material.dart';

import 'configs/configs.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      routes: {
        "/":(context)=>const Home(),
      },
      theme: ThemeData(primarySwatch: buildMaterialColor(const Color(0x02352EFF))),
    );
  }
}
