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
  Duration _duration=Duration();
  Duration _position=Duration();
  double _slider=0;
  String _error="";
  num curIndex = 0;
  PlayMode playMode = AudioManager.instance.playMode;

  final list = [
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/5.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/4.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/3.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/2.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/1.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/6.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/7.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/8.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/9.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/10.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/11.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/12.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/13.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/14.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/15.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/16.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/17.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/18.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/19.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/20.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/21.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/22.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/23.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/24.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/25.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/26.mp3",
      "coverUrl": "images/d.png"
    },
    {
      "title": "اناشيد",
      "desc": "assets playback",
      "url": "audio/27.mp3",
      "coverUrl": "images/d.png"
    }
  ];
  BannerAd? _bannerAd;
  @override
  void dispose() {
    // TODO: Dispose a BannerAd object
    _bannerAd?.dispose();


    super.dispose();
  }
  @override
  void initState() {
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
          AudioManager.instance.updateLrc("audio resource loading....");
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
              Divider(color: Colors.white,),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${ index +1} ',
                                style: TextStyle(fontSize: 24,color: Color(0xffFFE29D))),
                            Text('${list[index]["title"]!} ',
                                style: TextStyle(fontSize: 24,color: Color(0xffFFE29D))),
                          ],
                        ),
                        onTap: () => AudioManager.instance.play(index: index),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(color: Colors.white,),
                    itemCount: list.length),
              ),
              Center(
                  child: Text(_error != null
                      ? _error
                      : "${AudioManager.instance.info!.title}")),
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
              onPressed: ()  {
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
                  value: _slider ,
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
