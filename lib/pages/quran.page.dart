
import 'package:ayat/configs/GetButtonNavigatBar.config.dart';
import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';

import 'Sorah.page.dart';


class Quran extends StatelessWidget {
   Quran({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
        appBar: getAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              getFront('b'),
              Divider(color: Colors.white,),
              Container(
                  child:  Center(
                    // Use future builder and DefaultAssetBundle to load the local JSON file
                    child:

                    SizedBox(
                            height: 400,
                            child: ListView.separated(

                              // Build the ListView
                              itemBuilder: (BuildContext context, int index) {
                                var name = item[index].split('*');
                                return InkWell(
                                  onTap: (){

                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Surah(sora:index+1)));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('${name[0]}',textAlign: TextAlign.justify,style: const TextStyle(color: Color(0xffFFE29D),fontSize: 20 ),),
                                          Text('${name[1]}',textAlign: TextAlign.justify,style: const TextStyle(color: Color(0xffFFE29D),fontSize: 28,fontWeight: FontWeight.bold ),),
                                           ],
                                      ),
                                  ),
                                )
                                ;
                              },
                              itemCount: item.length,
                              separatorBuilder: (BuildContext context, int index) { return Divider(color: Colors.white,); },
                            ),
                          ),
                  ),
                ),

            ],
          ),
        ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );

  }
}


