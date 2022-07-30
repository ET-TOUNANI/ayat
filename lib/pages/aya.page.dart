import 'package:ayat/configs/GetButtonNavigatBar.config.dart';
import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';

class Aya extends StatefulWidget {
  const Aya({Key? key}) : super(key: key);

  @override
  State<Aya> createState() => _AyaState();
}

class _AyaState extends State<Aya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
      appBar: getAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getFront('ds'),
            const Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'اختبر معلوماتك عن الإسلام في هذه الاختبار حيث ستعرف مدى معرفتك بدينك،'
                    ' حيث أغلبها أمور يجب أن يعلمها كل مسلم، '
                    'وفي حالة كانت نتيجتك أقل من 50% فأنت بحاجة لمراجعة نفسك ومعلوماتك الدينية',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            RawMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/test');
              },
              elevation: 2.0,
              fillColor: Color(0xffFFE29D),
              child: Icon(
                Icons.play_arrow,
                size: 35.0,
                color:Colors.black,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            )],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}
