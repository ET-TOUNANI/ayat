import 'dart:convert';
import 'dart:math';
//https://api.aladhan.com/v1/calendarByAddress?address=Mohammedia,%20Maroc&method=2&month=07&year=2022
//http://api.aladhan.com/v1/qibla/25.4106386/51.1846025
// http://api.aladhan.com/asmaAlHusna/77
import 'package:ayat/configs/GetButtonNavigatBar.config.dart';
import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';

class Azkar extends StatefulWidget {
  const Azkar({Key? key}) : super(key: key);

  @override
  State<Azkar> createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {

  int time=0;
  int repeat=1;
  int i=0;

  void initState(){
     i= Random().nextInt(70);// get random sora
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
      appBar: getAppBar(),
      //drawer:  MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            getFront('g'),
            const Divider(
              height: 20,
            ),
            FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('data/azkar.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());

                  return SizedBox(
                    height: 400,
                    child: ListView.builder(
                      // Build the ListView
                      itemBuilder: (BuildContext context, int index) {

                        repeat=new_data[i]['repeat'];
                        return Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(15),
                                //apply padding to all four sides
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text(
                                    '${new_data[i]['zekr']}',
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                        color: Color(0xffFFE29D),
                                        wordSpacing: 5,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            RawMaterialButton(
                              onPressed: () {
                                if(time<repeat){
                                  time++;
                                  setState((){

                                  });
                                }
                                else {
                                  time=0;
                                i = Random().nextInt(70);
                                  setState((){

                                  });
                                }

                              },
                              elevation: 2.0,
                              fillColor: Colors.green,
                              child: Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                            ),
                            Divider(),
                            Text("$time / $repeat",
                                style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        );
                      },
                      itemCount: new_data == null ? 0 : 1,

                    ),

                  );

                }),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}
