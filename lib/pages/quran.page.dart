
import 'dart:convert';

import 'package:ayat/configs/GetButtonNavigatBar.config.dart';
import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';

import 'Sorah.page.dart';


class Quran extends StatelessWidget {
   Quran({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
        appBar: getAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              getFront('g'),
              Container(
                  child:  Center(
                    // Use future builder and DefaultAssetBundle to load the local JSON file
                    child:  FutureBuilder(
                        future: DefaultAssetBundle
                            .of(context)
                            .loadString('data/Quran.json'),
                        builder: (context, snapshot) {
                          // Decode the JSON
                          var new_data = json.decode(snapshot.data.toString());

                          return  SizedBox(
                            height: 400,
                            child: ListView.separated(
                              // Build the ListView
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Surah(sora:new_data[index]['Surah'])));
                                  },
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text('${new_data[index]['Descent']}',textAlign: TextAlign.justify,style: const TextStyle(fontFamily: 'me',color: Color(0xffFFE29D),fontSize: 24 ),),
                                        Text('${new_data[index]['Name']}',textAlign: TextAlign.justify,style: const TextStyle(fontFamily: 'me',color: Color(0xffFFE29D),fontSize: 28,fontWeight: FontWeight.bold ),),
                                        Text('${new_data[index]['Number']}',textAlign: TextAlign.justify,style: const TextStyle(color: Color(0xffFFE29D),fontSize: 20 ),),
                                      ],
                                    ),
                                )
                                ;
                              },
                              itemCount: new_data == null ? 0 : new_data.length,
                              separatorBuilder: (BuildContext context, int index) { return Divider(color: Colors.white,); },
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


