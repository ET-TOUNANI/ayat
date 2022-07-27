import 'package:ayat/configs/configs.dart';
import 'package:ayat/pages/awkatSalat.page.dart';
import 'package:ayat/pages/aya.page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                            List<DateTime> awkats = getSalawat(tab[0], tab[1]);
                            if (awkats.isNotEmpty) {
                              List<Map> times = awkat(awkats[0], awkats[1],
                                  awkats[2], awkats[3], awkats[4], awkats[5]);
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
                            image: const AssetImage('images/time.png'),
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
                        // scanMe(); // scan the barcode
                        //Navigator.pushNamed(context, "/scanner");
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
                        // scanMe(); // scan the barcode
                        //Navigator.pushNamed(context, "/scanner");
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
                            "مسجد القرب",
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
                        // scanMe(); // scan the barcode
                        //Navigator.pushNamed(context, "/scanner");
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
                        // scanMe(); // scan the barcode
                        //Navigator.pushNamed(context, "/scanner");
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
                        // scanMe(); // scan the barcode
                        //Navigator.pushNamed(context, "/scanner");
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
