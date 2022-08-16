import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gigo/home.dart';
import 'package:gigo/myClass.dart';
import 'package:gigo/myPage.dart';

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  var _index = 1; // 페이지 인덱스
  var _pages = [
    myClass(),
    homePage(),
    myPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_index],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _index = index;
              });
            },
            // BottomNavigationBar Theme
            backgroundColor: Color(0xffabb294),
            selectedItemColor: Color(0xffefe6d5),
            iconSize: 35.h,
            currentIndex: _index,
            // BottomNavigationBar Items
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'MY CLASS',
                icon: Icon(Icons.menu_book_rounded),
              ),
              BottomNavigationBarItem(
                label: 'HOME',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'MY PAGE',
                icon: Icon(Icons.account_circle),
              ),
            ],
          ),
    );
  }
}