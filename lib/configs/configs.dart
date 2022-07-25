import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
getFront(n){
  return Container(
    width: double.infinity,
    height: 200,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("images/1.png"), fit: BoxFit.fitWidth),
    ),
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image(
          image: AssetImage("images/$n.png"),

          height: 120,
        ),
      ],
    ),
  );
}
getTime(){
 return Container(
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/1.png"),
            fit: BoxFit.fitWidth
        ),
      ),
      child:  TimerBuilder.periodic(const Duration(seconds: 1),
          builder: (context) {
            var currentTime = DateTime.now();
            return Center(
                child: Text(
                  "\n\n\n${(currentTime.hour<10)? "0${currentTime.hour}":currentTime.hour} : ${(currentTime.minute<10)? "0${currentTime.minute}":currentTime.minute} : ${(currentTime.second<10)? "0${currentTime.second}":currentTime.second}",
                  style: const TextStyle(
                      color: Color(0xffFFE29D),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ));
          })// button text
  );
}


getAppBar() {
  return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff045448), Color(0xff002822)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Row(
          children: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Color(0xffFFE29D),
                )),
            SizedBox(width: 270,),
            Image(
              image: AssetImage("images/d.png"),
              height: 30,
            ),
          ],
        ),
      ));
}
