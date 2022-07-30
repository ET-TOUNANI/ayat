import 'package:flutter/material.dart';
import '../configs/GetButtonNavigatBar.config.dart';
import '../configs/configs.dart';
import 'Resulr.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);
  @override
  State<Test> createState() => _TestState();
}
class _TestState extends State<Test> {
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
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('جوهر رسالة الإسلام',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            getContainer(context,'التوحيد',Test2(note:10)),
            getContainer(context,'الزهد',Test2(note:0)),
            getContainer(context,'الصلاة',Test2(note:0)),
            getContainer(context,'تجنب المحرمات',Test2(note:0)),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

}
/*********************************************/
class Test2 extends StatefulWidget {
  const Test2({Key? key, required this.note}) : super(key: key);
  final int note;
  @override
  State<Test2> createState() => _Test2State();
}
class _Test2State extends State<Test2> {
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
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('فرضت الصلاة على المسلمين بعد',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            getContainer(context,'غزوة بدر',Test3(note:widget.note)),
            getContainer(context,'الاسراء و المعراج',Test3(note:widget.note+10)),
            getContainer(context,'تغيير القبلة',Test3(note:widget.note)),
            getContainer(context,'الهجرة للمدينة',Test3(note:widget.note)),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

}
/******************************************/
class Test3 extends StatefulWidget {
  const Test3({Key? key, required this.note}) : super(key: key);
  final int note;
  @override
  State<Test3> createState() => _Test3State();
}
class _Test3State extends State<Test3> {
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
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('التصديق بوجود بالملائكة والجن هو من أركان',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            getContainer(context,'الايمان',Test4(note:widget.note+10)),
            getContainer(context,'الاسلام',Test4(note:widget.note)),
            getContainer(context,'الصلاة',Test4(note:widget.note)),
            getContainer(context,'لا اعلم',Test4(note:widget.note)),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

}
/*******************************************/
class Test4 extends StatefulWidget {
  const Test4({Key? key, required this.note}) : super(key: key);
  final int note;
  @override
  State<Test4> createState() => _Test4State();
}
class _Test4State extends State<Test4> {
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
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('عدد أركان الإسلام',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            getContainer(context,'7',Test5(note:widget.note)),
            getContainer(context,'6',Test5(note:widget.note)),
            getContainer(context,'3',Test5(note:widget.note)),
            getContainer(context,'5',Test5(note:widget.note+10)),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

}
/*********************************************/
class Test5 extends StatefulWidget {
  const Test5({Key? key, required this.note}) : super(key: key);
  final int note;
  @override
  State<Test5> createState() => _Test5State();
}
class _Test5State extends State<Test5> {
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
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('من هو الروح القدس',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            getContainer(context,'جبريل عليه السلام',Test6(note:widget.note+10)),
            getContainer(context,'ميكائيل عليه السلام',Test6(note:widget.note)),
            getContainer(context,'اسرافيل عليه السلام',Test6(note:widget.note)),
            getContainer(context,'رضوان عليه السلام',Test6(note:widget.note)),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

}
/*********************************************/
class Test6 extends StatefulWidget {
  const Test6({Key? key, required this.note}) : super(key: key);
  final int note;
  @override
  State<Test6> createState() => _Test6State();
}
class _Test6State extends State<Test6> {
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
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('كم عدد أجزاء القرآن الكريم',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            getContainer(context,'60',Test7(note:widget.note)),
            getContainer(context,'100',Test7(note:widget.note)),
            getContainer(context,'50',Test7(note:widget.note)),
            getContainer(context,'30',Test7(note:widget.note+10)),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

}
/*********************************************/
class Test7 extends StatefulWidget {
  const Test7({Key? key, required this.note}) : super(key: key);
  final int note;
  @override
  State<Test7> createState() => _Test7State();
}
class _Test7State extends State<Test7> {
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
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('بعث النبي ﷺ برسالة الإسلام وعمره',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            getContainer(context,'40',Test8(note:widget.note+10)),
            getContainer(context,'50',Test8(note:widget.note)),
            getContainer(context,'25',Test8(note:widget.note)),
            getContainer(context,'30',Test8(note:widget.note)),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

}
/*********************************************/
class Test8 extends StatefulWidget {
  const Test8({Key? key, required this.note}) : super(key: key);
  final int note;
  @override
  State<Test8> createState() => _Test8State();
}
class _Test8State extends State<Test8> {
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
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('أول من آمن بالنبي ﷺ من الرجال',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            getContainer(context,'عثمان ب عفان',Test9(note:widget.note)),
            getContainer(context,'عمر بن الخطاب',Test9(note:widget.note)),
            getContainer(context,'مصعب بن عمير',Test9(note:widget.note)),
            getContainer(context,'ابو بكر الصديق',Test9(note:widget.note+10)),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

}
/*********************************************/
class Test9 extends StatefulWidget {
  const Test9({Key? key, required this.note}) : super(key: key);
  final int note;
  @override
  State<Test9> createState() => _Test9State();
}
class _Test9State extends State<Test9> {
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
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('رسالة النبي ﷺ كانت مخصصة',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            getContainer(context,'لكافة سكان الجزيرة العربية',Test10(note:widget.note)),
            getContainer(context,'لكافة البشر',Test10(note:widget.note+10)),
            getContainer(context,'للعرب فقط',Test10(note:widget.note)),
            getContainer(context,'لكافة الانس و الجن',Test10(note:widget.note)),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

}
/*********************************************/
class Test10 extends StatefulWidget {
  const Test10({Key? key, required this.note}) : super(key: key);
  final int note;
  @override
  State<Test10> createState() => _Test10State();
}
class _Test10State extends State<Test10> {
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
            Padding(
                padding: EdgeInsets.all(15),
                //apply padding to all four sides
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('التوراة هو الكتاب الذي أنزله الله تعالى على النبي',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Color(0xffFFE29D),
                        fontSize: 24),
                  ),
                )),
            SizedBox(height: 4,),
            getContainer(context,'عيسى عليه السلام',Result(note:widget.note)),
            getContainer(context,'داوود عليه السلام',Result(note:widget.note)),
            getContainer(context,'موسى عليه السلام',Result(note:widget.note+10)),
            getContainer(context,'ابراهيم عليه السلام',Result(note:widget.note)),
          ],
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

}