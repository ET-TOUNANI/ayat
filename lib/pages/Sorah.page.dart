import 'package:flutter/material.dart';

import '../configs/GetButtonNavigatBar.config.dart';
import '../configs/configs.dart';

class Surah extends StatelessWidget {
  const Surah({Key? key,required this.sora}) : super(key: key);
  final String sora;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff003D34),
      appBar: getAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget> [
            getFront('b'),
            Padding(
                padding: EdgeInsets.all(15), //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(sora,textAlign: TextAlign.justify,style: const TextStyle(color: Color(0xffFFE29D),wordSpacing: 5,fontSize: 30,fontWeight: FontWeight.bold ),),
                )
            ),

          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}