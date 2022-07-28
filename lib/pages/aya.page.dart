import 'dart:convert';

import 'package:ayat/configs/GetButtonNavigatBar.config.dart';
import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:math';

import '../adhelper.page.dart';

class Aya extends StatefulWidget {
   Aya({Key? key}) : super(key: key);

  @override
  State<Aya> createState() => _AyaState();
}

class _AyaState extends State<Aya> {
  BannerAd? _bannerAd;
  @override
  void dispose() {
    // TODO: Dispose a BannerAd object
    _bannerAd?.dispose();


    super.dispose();
  }
  @override
  void initState() {
    // TODO: Load a banner ad
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
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
            if (_bannerAd != null)
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              ),
            ),
            const Divider(
              height: 20,
            ),
            FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('data/Quran.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());
                  int i=1 + Random().nextInt(114 - 1);// get random sora
                  return SizedBox(
                    height: 400,
                    child: ListView.builder(
                      // Build the ListView
                      itemBuilder: (BuildContext context, int index) {
                        var tab=(new_data[i]['Surah']).split(')');
                        int j=Random().nextInt(tab.length-1);
                       // print('${j} ---- ${tab.length}');

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
                                    '${tab[j]})',
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