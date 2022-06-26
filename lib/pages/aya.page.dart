import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';
class Aya extends StatelessWidget {
  const Aya({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
      appBar:  getAppBar(),
      //drawer:  MyDrawer(),
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("images/1.png"),
          //Rows()
        ],
      ),
    );
  }
}

