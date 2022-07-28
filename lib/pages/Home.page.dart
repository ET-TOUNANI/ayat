import 'package:ayat/configs/configs.dart';
import 'package:ayat/pages/awkatSalat.page.dart';
import 'package:ayat/pages/aya.page.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../adhelper.page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getFront('h'),
          if (_bannerAd != null)
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: const Color(0xff002822),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () async {
                        bool permission = await checkGps();
                        if (permission) {
                          List<double> tab = await getLocation();
                          if (tab.isNotEmpty) {
                            List awkats = getSalawat(tab[0], tab[1]);
                            if (awkats.isNotEmpty) {
                              List<Map> times = awkat(awkats[0], awkats[1],
                                  awkats[2], awkats[3], awkats[4], awkats[5],awkats[6]);
                              if (times.isNotEmpty) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AwkatSalat(awkat: times)));
                              }
                            }
                          }
                        }
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('images/masjid.png'),
                            height: 80,
                            width: 110,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "اوقات الصلاة",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFE29D)),
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 8,
                  ),
                  Material(
                    color: const Color(0xff002822),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.pushNamed(context, "/qibla");
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('images/kibla.png'),
                            height: 80,
                            width: 110,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "القبلة",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFE29D)),
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 8,
                  ),
                  Material(
                    color: const Color(0xff002822),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Aya()),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('images/aya.png'),
                            height: 80,
                            width: 110,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "اية",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFE29D)),
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: const Color(0xff002822),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.pushNamed(context, '/azkar');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('images/tasbih.png'),
                            height: 80,
                            width: 110,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "تسبيح",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFE29D)),
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 8,
                  ),
                  Material(
                    color: const Color(0xff002822),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.pushNamed(context, "/doae");
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('images/doae.png'),
                            height: 80,
                            width: 110,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "الادعية",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFE29D)),
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 8,
                  ),
                  Material(
                    color: const Color(0xff002822),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.pushNamed(context, '/location');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('images/time.png'),
                            height: 80,
                            width: 110,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "تجويد",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFE29D)),
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),
              Column(
                children: [
                  Material(
                    color: const Color(0xff002822),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.pushNamed(context, '/quran');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('images/quran.png'),
                            height: 80,
                            width: 110,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "القران الكريم",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFE29D)),
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 8,
                  ),
                  Material(
                    color: const Color(0xff002822),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.pushNamed(context, '/hijri');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('images/takwim.png'),
                            height: 80,
                            width: 110,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "التقويم الهجري",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFE29D)),
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 8,
                  ),
                  Material(
                    color: const Color(0xff002822),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.pushNamed(context, "/about");
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('images/builder.png'),
                            height: 80,
                            width: 110,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "حول",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFE29D)),
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
