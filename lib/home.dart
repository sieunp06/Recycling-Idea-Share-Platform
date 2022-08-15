import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {*/
class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50.h,
                width: 280.w,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '검색',
                    border: OutlineInputBorder(),     // 외곽선
                  ),
                ),
              ),
              Icon(
                Icons.search,
                size: 30.w,
              ),
              Icon(
                Icons.notifications,
                size: 30.w,
              ),
            ]
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Text(
                  "아이디어",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),
                ),
                onTap: () {
                  print('아이디어 클릭');
                },
              ),
              GestureDetector(
                child: Text(
                  "클래스",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),
                ),
                onTap: () {
                  print('클래스 클릭');
                },
              ),
              GestureDetector(
                child: Text(
                  "공방",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),
                ),
                onTap: () {
                  print('공방 클릭');
                },
              ),
              GestureDetector(
                child: Text(
                  "이벤트",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),
                ),
                onTap: () {
                  print('이벤트 클릭');
                },
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 200.h,
            color: Colors.purple,
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            child: Row(
              children: [
                Text(
                  "이런 아이디어는 어떠세요?",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'namumGothic', fontWeight: FontWeight.w700
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.chevron_right_sharp,
                    size: 35.w,
                  ),
                  onTap: () {
                    print('아이디어 더보기 버튼 클릭');
                  },
                ),
              ]
            )
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            height: 220.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
              ],
            )
          ),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }
}