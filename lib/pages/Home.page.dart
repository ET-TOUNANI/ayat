import 'package:ayat/configs/configs.dart';
import 'package:ayat/pages/awkatSalat.page.dart';
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
                  getContainer('location', 'time', 'تجويد'),
                  getContainer('qibla', 'kibla', 'القبلة'),
                  getContainer('aya', 'aya', 'اختبر نفسك'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                  height: MediaQuery.of(context).size.height / 5.5,
                  width: MediaQuery.of(context).size.width / 3,
                  padding: EdgeInsets.all(1.5),
                  child: Material(
                    color: const Color(0xff002822),
                    elevation: 8,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        doIt();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Ink.image(
                            image: AssetImage('images/masjid.png'),
                            height: 40,
                            width: 40,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            "اوقات الصلاة",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffFFE29D)),
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                  getContainer('hijri', 'takwim', 'التقويم الهجري'),
                  getContainer('doae', 'doae', 'الادعية'),
                ],
              ),
              Column(
                children: [
                  getContainer('quran', 'quran', 'القران الكريم'),
                  getContainer('azkar', 'tasbih', 'تسبيح'),
                  getContainer('about', 'builder', 'حول')
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  getContainer(rout, img, name) {
    return Container(
      height: MediaQuery.of(context).size.height / 5.5,
      width: MediaQuery.of(context).size.width / 3,
      padding: EdgeInsets.all(1.5),
      child: Material(
        color: const Color(0xff002822),
        elevation: 8,
        child: InkWell(
          splashColor: Colors.black26,
          onTap: () {
            Navigator.pushNamed(context, '/$rout');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink.image(
                image: AssetImage('images/$img.png'),
                height: 40,
                width: 40,
                //fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "$name",
                style: TextStyle(fontSize: 14, color: Color(0xffFFE29D)),
              ),
              const SizedBox(
                height: 6,
              )
            ],
          ),
        ),
      ),
    );
  }

  doIt() async {
    bool permission = await checkGps();
    if (permission) {
      List<double> tab = await getLocation();
      if (tab.isNotEmpty) {
        List awkats = getSalawat(tab[0], tab[1]);
        if (awkats.isNotEmpty) {
          List<Map> times = awkat(awkats[0], awkats[1], awkats[2], awkats[3],
              awkats[4], awkats[5], awkats[6]);
          if (times.isNotEmpty) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AwkatSalat(awkat: times)));
          }
        }
      }
    }
  }
}
