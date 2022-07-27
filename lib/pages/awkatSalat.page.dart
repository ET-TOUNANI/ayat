import 'package:ayat/configs/GetButtonNavigatBar.config.dart';
import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

class AwkatSalat extends StatefulWidget {
  AwkatSalat({Key? key, required this.awkat}) : super(key: key);
  final List<Map> awkat;

  @override
  State<AwkatSalat> createState() => _AwkatSalatState();
}

class _AwkatSalatState extends State<AwkatSalat> {
  List<Widget> row = [];

  void initState() {
    for (int i = 0; i < widget.awkat.length; i++) {
      row.add(getRow(i));
    }
    setState(() {});
  }

  getRow(index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0,8,15,8),
      child: Chip(

        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              '${widget.awkat[index]['time']}',
              textAlign: TextAlign.justify,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              '${widget.awkat[index]['name']}',
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            )
          ],
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
      appBar: getAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/1.png"), fit: BoxFit.fitWidth),
                ),
                child: TimerBuilder.periodic(const Duration(seconds: 1),
                    builder: (context) {
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
                ),
            Divider(height: 30,),
            Center(
              child: Column(
                children: row,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}
