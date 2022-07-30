import 'package:flutter/material.dart';

import '../configs/GetButtonNavigatBar.config.dart';
import '../configs/configs.dart';

class Surah extends StatefulWidget {
  Surah({Key? key, required this.sora}) : super(key: key);
  final int sora;

  @override
  State<Surah> createState() => _SurahState();
}

class _SurahState extends State<Surah> {
  List<Widget> images = [];

  /*

  */
  void initState() {
    switch (widget.sora) {
      case 1:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Fatiha.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 2:
        buildUi(48, 'Al-Baqara-');
        break;
      case 3:
        buildUi(27, 'Al-Imran-');
        break;
      case 4:
        buildUi(30, 'An-Nisa-');
        break;
      case 5:
        buildUi(22, 'Al-Ma-ida-');
        break;
      case 6:
        buildUi(23, 'Al-An-am-');
        break;
      case 7:
        buildUi(26, 'Al-A-raf-');
        break;
      case 8:
        buildUi(10, 'Al-Anfal-');
        break;
      case 9:
        buildUi(21, 'At-Tawba-');
        break;
      case 10:
        buildUi(14, 'Yunus-');
        break;
      case 11:
        buildUi(15, 'Hud-');
        break;
      case 12:
        buildUi(14, 'Yusuf-');
        break;
      case 13:
        buildUi(7, 'Ar-Ra-d-');
        break;
      case 14:
        buildUi(7, 'Ibrahim-');
        break;
      case 15:
        buildUi(6, 'Al-Hijr-');
        break;
      case 16:
        buildUi(15, 'An-Nahl-');
        break;
      case 17:
        buildUi(12, 'Al-Isra-');
        break;
      case 18:
        buildUi(12, 'Al-Kahf-');
        break;
      case 19:
        buildUi(8, 'Maryam-');
        break;
      case 20:
        buildUi(10, 'Ta-Ha-');
        break;
      case 21:
        buildUi(10, 'Al-Anbya-');
        break;
      case 22:
        buildUi(10, 'Al-Hajj-');
        break;
      case 23:
        buildUi(8, 'Al-Muminoon-');
        break;
      case 24:
        buildUi(10, 'An-Noor-');
        break;
      case 25:
        buildUi(8, 'Al-Furqan-');
        break;
      case 26:
        buildUi(10, 'Ash-Shu-ara-');
        break;
      case 27:
        buildUi(9, 'An-Naml-');
        break;
      case 28:
        buildUi(12, 'Al-Qasas-');
        break;
      case 29:
        buildUi(9, 'Al-Ankabut-');
        break;
      case 30:
        buildUi(7, 'Ar-Rum-');
        break;
      case 31:
        buildUi(4, 'Luqman-');
        break;
      case 32:
        buildUi(3, 'As-Sajda-');
        break;
      case 33:
        buildUi(10, 'Al-Ahzab-');
        break;
      case 34:
        buildUi(7, 'Saba-');
        break;
      case 35:
        buildUi(7, 'Al-Fatir-');
        break;
      case 36:
        buildUi(6, 'Ya-Sin-');
        break;
      case 37:
        buildUi(7, 'As-Saffat-');
        break;
      case 38:
        buildUi(6, 'Sad-');
        break;
      case 39:
        buildUi(10, 'Az-Zoumar-');
        break;
      case 40:
        buildUi(10, 'Al-Ghafir-');
        break;
      case 41:
        buildUi(6, 'Fussilat-');
        break;
      case 42:
        buildUi(7, 'Ash-Shura-');
        break;
      case 43:
        buildUi(7, 'Az-Zukhruf-');
        break;
      case 44:
        buildUi(3, 'Ad-Dukhan-');
        break;
      case 45:
        buildUi(4, 'Al-Jathiya-');
        break;
      case 46:
        buildUi(5, 'Al-Ahqaf-');
        break;
      case 47:
        buildUi(4, 'Muhammad-');
        break;
      case 48:
        buildUi(5, 'Al-Fath-');
        break;
      case 49:
        buildUi(3, 'Al-Hujurat-');
        break;
      case 50:
        buildUi(3, 'Qaf-');
        break;
      case 51:
        buildUi(4, 'Ad-Dariyat-');
        break;
      case 52:
        buildUi(3, 'At-Tur-');
        break;
      case 53:
        buildUi(3, 'An-Najm-');
        break;
      case 54:
        buildUi(4, 'Al-Qamar-');
        break;
      case 55:
        buildUi(4, 'Ar-Rahman-');
        break;
      case 56:
        buildUi(4, 'Al-Waqi-a-');
        break;
      case 57:
        buildUi(5, 'Al-Hadid-');
        break;
      case 58:
        buildUi(4, 'Al-Mujadala-');
        break;
      case 59:
        buildUi(4, 'Al-Hashr-');
        break;
      case 60:
        buildUi(3, 'Al-Mumtahana-');
        break;
      case 61:
        buildUi(2, 'As-Saff-');
        break;
      case 62:
        buildUi(2, 'Al-Jumu-a-');
        break;
      case 63:
        buildUi(2, 'Al-Munafiqoon-');
        break;
      case 64:
        buildUi(2, 'At-Taghabun-');
        break;
      case 65:
        buildUi(2, 'At-Talaq-');
        break;
      case 66:
        buildUi(2, 'At-Tahrim-');
        break;
      case 67:
        buildUi(3, 'Al-Mulk-');
        break;
      case 68:
        buildUi(3, 'Al-Qalam-');
        break;
      case 69:
        buildUi(3, 'Al-Haqqah-');
        break;
      case 70:
        buildUi(3, 'Al-Ma-arij-');
        break;
      case 71:
        buildUi(2, 'Nuh-1');
        break;
      case 72:
        buildUi(2, 'Al-Jinn-');
        break;
      case 73:
        buildUi(2, 'Al-Muzzammil-');
        break;
      case 74:
        buildUi(3, 'Al-Muddathir-');
        break;
      case 75:
        buildUi(2, 'Al-Qiyama-');
        break;
      case 76:
        buildUi(3, 'Al-Insan-');
        break;
      case 77:
        buildUi(2, 'Al-Mursalat-');
        break;
      case 78:
        buildUi(2, 'An-Naba-');
        break;
      case 79:
        buildUi(2, 'An-Nazi-at-');
        break;
      case 80:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Abasa.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 81:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/At-Takweer.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 82:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Infitar.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 83:
        buildUi(2, 'Al-Mutaffifin-');
        break;
      case 84:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Inshiqaq.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 85:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Buruj.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 86:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/At-Tariq.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 87:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-A-la.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 88:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Ghashiya.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 89:
        buildUi(2, 'Al-Fajr-');
        break;
      case 90:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Balad.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 91:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Ash-Shams.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 92:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Layl.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 93:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Ad-Duha.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 94:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Ash-Sharh.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 95:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/At-Teen.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 96:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Alaq.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 97:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Qadr.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 98:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Bayyina.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 99:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Zalzala.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 100:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-adiyat.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 101:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Qari-a.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 102:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/At-Takathur.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 103:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Asr.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 104:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Humaza.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 105:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Fil.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 106:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Quraysh.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 107:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Ma-un.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 108:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Kawthar.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 109:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-kafiroon.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 110:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/An-Nasr.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 111:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Masad.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 112:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Ikhlas.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 113:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/Al-Falaq.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
      case 114:
        images.add(Image(
          image: AssetImage('quran/${widget.sora}/An-Nas.jpg'),
          fit: BoxFit.fitHeight,
        ));
        break;
    }
  }

  buildUi(nb, name) {
    for (int i = 1; i <= nb; i++) {
      images.add(getImages('$name$i'));
    }
  }

  getImages(name) => Image(
        image: AssetImage('quran/${widget.sora}/$name.jpg'),
        fit: BoxFit.fitHeight,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
      appBar: getAppBar(),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: images,
      )),
      floatingActionButton: Container(
        width: 40,
        height: 40,
        child: FloatingActionButton(

          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Color(0xffFFE29D),
          child: Icon(
            Icons.navigate_next_rounded,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}
