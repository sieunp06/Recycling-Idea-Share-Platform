import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gigo/login.dart';

class myPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              color: Color(0xff5b6354),
              width: 360.w,
              height: 250.h
            ),
            Positioned(
              top: 25.0.h,
              left: 25.0.w,
              child: Text(
                "MY",
                softWrap: true,
                overflow: TextOverflow.fade,
                style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'namumGothic', fontWeight: FontWeight.w700
                ),
              ),
            ),
            // Todo. 원형 이미지로 변경하기
            Positioned(
              top: 80.h,
              left: 25.w,
              child: Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
                size: 120.h,
              ),
            ),
            Positioned(
              top: 125.h,
              left: 145.w,
              // 로그인 안했을 때 마이 페이지 화면
              child: GestureDetector(
                child: Text(
                  '로그인',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.sp,
                    fontFamily: 'namumGothic', fontWeight: FontWeight.w700
                  ),
                ),
                onTap: (){
                  print('로그인 클릭');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                }
              ),
            ),
            /*
            Positioned(
              top: 145.h,
              left: 145.w,
              child: Text(
                "레벨",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontFamily: 'namumGothic', fontWeight: FontWeight.w700
                ),
              ),
            ),
            */
          ],
        ),
        Column(
          children: <Widget>[
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    '고객센터',
                    style: TextStyle(
                      fontSize: 15.sp,
                    )
                  ),
                  trailing: Icon(Icons.navigate_next),
                  //todo. 고객센터 클릭시 내용 추가
                  onTap: () {
                    print('고객센터 클릭');
                  },
                ),
                ListTile(
                  title: Text('공지사항'),
                  //todo. 공지사항 클릭시 내용 추가
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    print('공지사항 클릭');
                  },
                ),
              ]
            )
          ],
        )
      ],
    );
  }
}