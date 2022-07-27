import 'dart:convert';

import 'package:ayat/configs/GetButtonNavigatBar.config.dart';
import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Aya extends StatelessWidget {
   Aya({Key? key}) : super(key: key);

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
                future:
                DefaultAssetBundle.of(context).loadString('data/Quran.json'),

                builder: (context, snapshot) {

                  // Decode the JSON
                  List<dynamic> new_data = json.decode(snapshot.data.toString());
                     if (new_data.isNotEmpty)
                  {
                    int i = 1 + Random().nextInt(114 - 1);
                    List tab = (new_data[i]['Surah']).split(')');
                    tab.removeWhere((element) => element == '(');
                    int j = Random().nextInt(tab.length);
                    String aya = '${tab[j]})';
                    return Column(
                      children: [
                        Text(
                          'من سورة ${new_data[i]['Name']}',
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              color: Color(0xffFFE29D),
                              wordSpacing: 5,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                            padding: EdgeInsets.all(15),
                            //apply padding to all four sides
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text(
                                '${aya}',
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                    color: Color(0xffFFE29D),
                                    wordSpacing: 5,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
            //Rows()
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}