import 'package:flutter/material.dart';

void main()=>runApp(const myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=>Home(),
      },
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
