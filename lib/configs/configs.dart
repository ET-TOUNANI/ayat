import 'package:flutter/material.dart';

getAppBar(){
  return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
            gradient:LinearGradient(
                colors: [Color(0xff045448),Color(0xff002822)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget> [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.settings,color: Color(0xffFFE29D),)
            ),
            const Text("المغرب    ",style: TextStyle(color: Color(0xffFFE29D),fontSize: 18),)

          ],
        ),
      )
  );
}