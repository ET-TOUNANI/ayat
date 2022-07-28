import 'package:audio_manager/audio_manager.dart';
import 'package:ayat/configs/GetButtonNavigatBar.config.dart';
import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../adhelper.page.dart';

class MapLocation extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MapLocation> {
  bool isPlaying = false;
  Duration _duration = Duration();
  Duration _position = Duration();
  double _slider = 0;
  String _error = "";
  num curIndex = 0;
  PlayMode playMode = AudioManager.instance.playMode;

  final list = [];
  BannerAd? _bannerAd;

  @override
  void dispose() {
    // TODO: Dispose a BannerAd object
    _bannerAd?.dispose();

    super.dispose();
  }

  @override
  void initState() {
    if (list.isEmpty) {
      var item = [
        '1.* سورة الفاتحة',
        '2.* سورة البقرة',
        '3.* سورة آل عمران',
        '4.* سورة النساء',
        '5.* سورة المائدة',
        '6.* سورة الأنعام',
        '7.* سورة الأعراف',
        '8.* سورة الأنفال',
        '9.* سورة التوبة',
        '10.* سورة يونس',
        '11.* سورة هود',
        '12.* سورة يوسف',
        '13.* سورة الرعد',
        '14.* سورة إبراهيم',
        '15.* سورة الحجر',
        '16.* سورة النحل',
        '17.* سورة الإسراء',
        '18.* سورة الكهف',
        '19.* سورة مريم ',
        '20.* سورة طه',
        '21.* سورة الأنبياء',
        '22.* سورة الحج',
        '23.* سورة المؤمنون',
        '24.* سورة النور',
        '25.* سورة الفرقان',
        '26.* سورة الشعراء',
        '27.* سورة النمل ',
        '28.* سورة القصص',
        '29.* سورة العنكبوت',
        '30.* سورة الروم',
        '31.* سورة لقمان',
        '32.* سورة السجدة',
        '33.* سورة الأ',
        '34.* سورة سبأ',
        '35.* سورة فاطر',
        '36.* سورة يس ',
        '37.* سورة الصافات',
        '38.* سورة ص',
        '39.* سورة الزمر',
        '40.* سورة غافر',
        '41.* سورة فصلت',
        '42.* سورة الشورى',
        '43.* سورة الزخرف',
        '44.* سورة الدخان',
        '45.* سورة الجاثية',
        '46.* سورة الأحقاف',
        '47.* سورة محمد',
        '48.* سورة الفتح',
        '49.* سورة الحجرات',
        '50.* سورة ق',
        '51.* سورة الذاريات',
        '52.* سورة الطور',
        '53.* سورة النجم',
        '54.* سورة القمر',
        '55.* سورة الرحمن',
        '56.* سورة الواقعة',
        '57.* سورة الحديد',
        '58.* سورة المجادلة',
        '59.* سورة الحشر',
        '60.* سورة الممتحنة',
        '61.* سورة الصف',
        '62.* سورة الجمعة',
        '63.* سورة المنافقون',
        '64.* سورة التغابن',
        '65.* سورة الطلاق',
        '66.* سورة التحريم',
        '67.* سورة الملك',
        '68.* سورة القلم',
        '69.* سورة الحاقة',
        '70.* سورة المعارج',
        '71.* سورة نوح',
        '72.* سورة الجن',
        '73.* سورة المزمل',
        '74.* سورة المدثر',
        '75.* سورة القيامة',
        '76.* سورة الإنسان',
        '77.* سورة المرسلات',
        '78.* سورة النبأ',
        '79.* سورة النازعات',
        '80.* سورة عبس',
        '81.* سورة التكوير',
        '82.* سورة الإنفطار',
        '83.* سورة المطففين',
        '84.* سورة الإنشقاق',
        '85.* سورة البروج',
        '86.* سورة الطارق',
        '87.* سورة الأعلى',
        '88.* سورة الغاشية',
        '89.* سورة الفجر',
        '90.* سورة البلد',
        '91.* سورة الشمس',
        '92.* سورة الليل',
        '93.* سورة الضحى',
        '94.* سورة الشرح',
        '95.* سورة التين',
        '96.* سورة العلق',
        '97.* سورة القدر',
        '98.* سورة البينة',
        '99.* سورة الزلزلة',
        '100.* سورة العاديات',
        '101.* سورة القارعة',
        '102.* سورة التكاثر',
        '103.* سورة العصر',
        '104.* سورة الهمزة',
        '105.* سورة الفيل',
        '106.* سورة قريش',
        '107.* سورة الماعون',
        '108.* سورة الكوثر',
        '109.* سورة الكافرون',
        '110.* سورة النصر',
        '111.* سورة المسد',
        '112.* سورة الإخلاص',
        '113.* سورة الفلق',
        '114.* سورة الناس'
      ];
      for (int i = 0; i < item.length; i++) {
        var name = item[i].split('*');
        list.add({
          "title": name[1],
          "desc": "network resouce playback",
          "url":
              "https://download.quranicaudio.com/qdc/abdul_baset/mujawwad/${i + 1}.mp3",
          "coverUrl": "images/d.png"
        });

      }
    }
    _slider=0;
    AudioManager.instance.playOrPause();
    setupAudio();
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

  void setupAudio() {
    List<AudioInfo> _list = [];
    list.forEach((item) => _list.add(AudioInfo(item["url"]!,
        title: item["title"]!,
        desc: item["desc"]!,
        coverUrl: item["coverUrl"]!)));

    AudioManager.instance.audioList = _list;
    AudioManager.instance.intercepter = true;
    AudioManager.instance.play(auto: false);

    AudioManager.instance.onEvents((events, args) {
      print("$events, $args");
      switch (events) {
        case AudioManagerEvents.start:
          print(
              "start load data callback, curIndex is ${AudioManager.instance.curIndex}");
          _position = AudioManager.instance.position;
          _duration = AudioManager.instance.duration;
          _slider = 0;
          setState(() {});
          AudioManager.instance.updateLrc("... جاري التحميل ");
          break;
        case AudioManagerEvents.ready:
          print("ready to play");
          _error = "";
          _position = AudioManager.instance.position;
          _duration = AudioManager.instance.duration;
          setState(() {});
          // if you need to seek times, must after AudioManagerEvents.ready event invoked
          // AudioManager.instance.seekTo(Duration(seconds: 10));
          break;
        case AudioManagerEvents.seekComplete:
          _position = AudioManager.instance.position;
          _slider = _position.inMilliseconds / _duration.inMilliseconds;
          setState(() {});
          print("seek event is completed. position is [$args]/ms");
          break;
        case AudioManagerEvents.buffering:
          print("buffering $args");
          break;
        case AudioManagerEvents.playstatus:
          isPlaying = AudioManager.instance.isPlaying;
          setState(() {});
          break;
        case AudioManagerEvents.timeupdate:
          _position = AudioManager.instance.position;
          _slider = _position.inMilliseconds / _duration.inMilliseconds;
          setState(() {});
          AudioManager.instance.updateLrc(args["position"].toString());
          break;
        case AudioManagerEvents.error:
          _error = args;
          setState(() {});
          break;
        case AudioManagerEvents.ended:
          AudioManager.instance.next();
          break;
        default:
          break;
      }
    });
  }

  /* void loadFile() async {
    // read bundle file to local path
    final audioFile = await rootBundle.load("assets/1.mp3");
    final audio = audioFile.buffer.asUint8List();

    //final appDocDir = await getApplicationDocumentsDirectory();
   //print(appDocDir);

    //final file = File("${appDocDir.path}/1.mp3");
   // file.writeAsBytesSync(audio);

    AudioInfo info = AudioInfo("file://${file.path}",
        title: "file", desc: "local file", coverUrl: "images/d.png");

    list.add(info.toJson());
    AudioManager.instance.audioList.add(info);
    setState(() {});
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: const Color(0xff003D34),
      body: Center(
        child: Column(
          children: <Widget>[
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
            Divider(
              color: Colors.white,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${index + 1} ',
                              style: TextStyle(
                                  fontSize: 24, color: Color(0xffFFE29D))),
                          Text('${list[index]["title"]!} ',
                              style: TextStyle(
                                  fontSize: 24, color: Color(0xffFFE29D))),
                        ],
                      ),
                      onTap: () => AudioManager.instance.play(index: index),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(
                        color: Colors.white,
                      ),
                  itemCount: list.length),
            ),
            Center(
                child: Text(_error != null
                    ? _error
                    : "المرجوا التاكد من اتصالكم بالنترنت")),
            bottomPanel()
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

  Widget bottomPanel() {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: songProgress(context),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon: getPlayModeIcon(playMode),
                onPressed: () {
                  playMode = AudioManager.instance.nextMode();
                  setState(() {});
                }),
            IconButton(
                iconSize: 36,
                icon: Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                ),
                onPressed: () => AudioManager.instance.previous()),
            IconButton(
              onPressed: () {
                AudioManager.instance.playOrPause();
              },
              padding: const EdgeInsets.all(0.0),
              icon: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                size: 48.0,
                color: Colors.white,
              ),
            ),
            IconButton(
                iconSize: 36,
                icon: Icon(
                  Icons.skip_next,
                  color: Colors.white,
                ),
                onPressed: () => AudioManager.instance.next()),
            IconButton(
                icon: Icon(
                  Icons.stop,
                  color: Colors.white,
                ),
                onPressed: () => AudioManager.instance.stop()),
          ],
        ),
      ),
    ]);
  }

  Widget getPlayModeIcon(PlayMode playMode) {
    switch (playMode) {
      case PlayMode.sequence:
        return Icon(
          Icons.repeat,
          color: Colors.white,
        );
      case PlayMode.shuffle:
        return Icon(
          Icons.shuffle,
          color: Colors.white,
        );
      case PlayMode.single:
        return Icon(
          Icons.repeat_one,
          color: Colors.white,
        );
    }
  }

  Widget songProgress(BuildContext context) {
    var style = TextStyle(color: Colors.white);
    return Row(
      children: <Widget>[
        Text(
          _formatDuration(_position),
          style: style,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 2,
                  thumbColor: Colors.blueAccent,
                  overlayColor: Colors.blue,
                  thumbShape: RoundSliderThumbShape(
                    disabledThumbRadius: 5,
                    enabledThumbRadius: 5,
                  ),
                  overlayShape: RoundSliderOverlayShape(
                    overlayRadius: 10,
                  ),
                  activeTrackColor: Colors.blueAccent,
                  inactiveTrackColor: Colors.white,
                ),
                child: Slider(
                  value: _slider,
                  onChanged: (value) {
                    setState(() {
                      _slider = value;
                    });
                  },
                  onChangeEnd: (value) {
                    Duration msec = Duration(
                        milliseconds:
                            (_duration.inMilliseconds * value).round());
                    AudioManager.instance.seekTo(msec);
                  },
                )),
          ),
        ),
        Text(
          _formatDuration(_duration),
          style: style,
        ),
      ],
    );
  }

  String _formatDuration(Duration d) {
    if (d == const Duration()) return "--:--";
    int minute = d.inMinutes;
    int second = (d.inSeconds > 60) ? (d.inSeconds % 60) : d.inSeconds;
    String format = ((minute < 10) ? "0$minute" : "$minute") +
        ":" +
        ((second < 10) ? "0$second" : "$second");
    return format;
  }
/*
  Widget volumeFrame() {
    return Row(children: <Widget>[
      IconButton(
          padding: EdgeInsets.all(0),
          icon: Icon(
            Icons.audiotrack,
            color: Colors.black,
          ),
          onPressed: () {
            AudioManager.instance.setVolume(0);
          }),
      Expanded(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Slider(
                value: _sliderVolume ?? 0,
                onChanged: (value) {
                  setState(() {
                    _sliderVolume = value;
                    AudioManager.instance.setVolume(value, showVolume: true);
                  });
                },
              )))
    ]);
  }*/
}
