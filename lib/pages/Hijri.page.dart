import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../adhelper.page.dart';
import '../configs/GetButtonNavigatBar.config.dart';
import '../configs/configs.dart';

class Hijri extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<Hijri> {
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
      appBar: getAppBar(),
      backgroundColor: const Color(0xff003D34),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              getFront('d'),
              if (_bannerAd != null)
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: _bannerAd!.size.width.toDouble(),
                    height: _bannerAd!.size.height.toDouble(),
                    child: AdWidget(ad: _bannerAd!),
                  ),
                ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.black38,
                    child: SfHijriDateRangePicker(
                      rangeTextStyle: TextStyle(color: const Color(0xffFFE29D)),
                      view: HijriDatePickerView.month,
                      showNavigationArrow: true,
                      selectionColor: Colors.indigoAccent,
                      monthViewSettings: HijriDatePickerMonthViewSettings(
                          dayFormat: 'EEE',
                          viewHeaderStyle: DateRangePickerViewHeaderStyle(
                              backgroundColor: Colors.tealAccent)),
                      headerStyle: DateRangePickerHeaderStyle(
                          textAlign: TextAlign.center,
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          backgroundColor: Colors.teal),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}
