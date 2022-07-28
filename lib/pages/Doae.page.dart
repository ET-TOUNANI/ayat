import 'dart:convert';

import 'package:ayat/configs/GetButtonNavigatBar.config.dart';
import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';

class Doae extends StatelessWidget {
  Doae({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
      appBar: getAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            getFront('doae'),
            Divider(color: Colors.white,),
            Container(
              child: Center(
                // Use future builder and DefaultAssetBundle to load the local JSON file
                child: FutureBuilder(
                    future: DefaultAssetBundle.of(context)
                        .loadString('data/doae.json'),
                    builder: (context, snapshot) {
                      // Decode the JSON
                      var new_data = json.decode(snapshot.data.toString());

                      return SizedBox(
                        height: 400,
                        child: ListView.separated(
                          // Build the ListView
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Ziker(doa: new_data[index]['zekr'],repeat:new_data[index]['repeat'])));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  color: Colors.white70,
                                    //apply padding to all four sides
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Text(
                                        '${new_data[index]['zekr']}    (${new_data[index]['repeat']})',
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            wordSpacing: 5,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              ),
                            );
                          },
                          itemCount: new_data == null ? 0 : new_data.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              color: Colors.white,
                            );
                          },
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}

class Ziker extends StatefulWidget {
   Ziker({Key? key,required this.doa,required this.repeat}) : super(key: key);
  final String doa;

  final int repeat;

  @override
  State<Ziker> createState() => _ZikerState();
}

class _ZikerState extends State<Ziker> {
  int time=0;

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
            getFront('d'),
            const Divider(
              height: 20,
            ),
        Column(
          children: [
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    '${widget.doa}',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        wordSpacing: 5,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Divider(),
            Text("$time / ${widget.repeat}",
                style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ],
        )
            //Rows()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffFFE29D),
        child:Icon(Icons.add,color: Colors.black,size: 30,),
        onPressed: (){
          if(time<widget.repeat){
            setState((){
              time++;
            });
          }
          else {
            setState((){
              time=0;
            });
            Navigator.pop(context);
          }
        },
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}
