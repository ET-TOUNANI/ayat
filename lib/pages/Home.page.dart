import 'package:ayat/configs/configs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
      appBar: getAppBar(),
      //drawer:  MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getFront('h'),
            const SizedBox(height: 100),
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
                          Navigator.pushNamed(context, "/quran");
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: const AssetImage('images/quran.png'),
                              height: 90,
                              width: 110,
                              //fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "English",
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
                          Navigator.pushNamed(context, "/quran");
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: const AssetImage('images/quran.png'),
                              height: 90,
                              width: 110,
                              //fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Spanish",
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
                          Navigator.pushNamed(context, "/quran");
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: const AssetImage('images/quran.png'),
                              height: 90,
                              width: 110,
                              //fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "French",
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
                          Navigator.pushNamed(context, "/quran");
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: const AssetImage('images/quran.png'),
                              height: 90,
                              width: 110,
                              //fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Russian",
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
                          Navigator.pushNamed(context, "/quran");
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
                          Navigator.pushNamed(context, "/quran");
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: const AssetImage('images/quran.png'),
                              height: 90,
                              width: 110,
                              //fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Chinese",
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
                          Navigator.pushNamed(context, "/quran");
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: const AssetImage('images/quran.png'),
                              height: 90,
                              width: 110,
                              //fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Turkish",
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
                          Navigator.pushNamed(context, "/quran");
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: const AssetImage('images/quran.png'),
                              height: 90,
                              width: 110,
                              //fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Indonesian",
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
                              height: 90,
                              width: 110,
                              //fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "About Us",
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
      ),
    );
  }
}
