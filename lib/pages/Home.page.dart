import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  getAppBar(),
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("images/1.png"),
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
                        onTap: () {
                          // scanMe(); // scan the barcode
                          //Navigator.pushNamed(context, "/scanner");
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
                              style: TextStyle(fontSize: 20, color: Color(0xffFFE29D)),
                            ),
                            const SizedBox(
                              height: 6,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(height: 8,),
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
                              style: TextStyle(fontSize: 20, color: Color(0xffFFE29D)),
                            ),
                            const SizedBox(
                              height: 6,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(height: 8,),
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
                              image: const AssetImage('images/aya.png'),
                              height: 80,
                              width: 110,
                              //fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "اية الاسبوع",
                              style: TextStyle(fontSize: 20, color: Color(0xffFFE29D)),
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
                              style: TextStyle(fontSize: 20, color: Color(0xffFFE29D)),
                            ),
                            const SizedBox(
                              height: 6,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(height: 8,),
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
                              style: TextStyle(fontSize: 20, color: Color(0xffFFE29D)),
                            ),
                            const SizedBox(
                              height: 6,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(height: 8,),
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
                              style: TextStyle(fontSize: 20, color: Color(0xffFFE29D)),
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
                          // scanMe(); // scan the barcode
                          //Navigator.pushNamed(context, "/scanner");
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
                              style: TextStyle(fontSize: 20, color: Color(0xffFFE29D)),
                            ),
                            const SizedBox(
                              height: 6,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(height: 8,),
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
                              style: TextStyle(fontSize: 20, color: Color(0xffFFE29D)),
                            ),
                            const SizedBox(
                              height: 6,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(height: 8,),
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
                              "الصانع",
                              style: TextStyle(fontSize: 20, color: Color(0xffFFE29D)),
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
      backgroundColor: const Color(0xff003D34),
    );
  }
}

