import 'package:flutter/material.dart';


GetButtonNavigatBar(context){

  return BottomNavigationBar(
    currentIndex: 1,
    onTap: (index)  {
      if(index==0){
        Navigator.pushNamed(context, "/");
      }
      else{
        Navigator.pushNamed(context, "/about");
      }
    },
    type: BottomNavigationBarType.fixed,
    backgroundColor: Color(0xff045448),
    selectedItemColor: Color(0xffFFE29D),
    unselectedItemColor: Color(0xffFFE29D),
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "الرئيسية",
      ),
      BottomNavigationBarItem(
        icon: Icon(
            Icons.help),
        label: "حول",
      ),
    ],
  );
}