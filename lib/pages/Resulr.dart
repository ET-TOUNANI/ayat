import 'package:ayat/configs/GetButtonNavigatBar.config.dart';
import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key,required this.note}) : super(key: key);
final int note;
  @override
  State<Result> createState() => _AyaState();
}

class _AyaState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
      appBar: getAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getFront('ds'),
            const Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('نتيجتك هي ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height/3 ,
              child:  Card(
color: Color(0xff002822),
                    child: Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          '${widget.note}/100',
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              color: Color(0xffFFE29D),
                              fontSize: 30),
                        ),
                      ),
                    ),
                  )),
            ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}
