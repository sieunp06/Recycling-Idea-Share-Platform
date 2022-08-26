import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              child: Text(
                "사용자 이름"
              )
            )
          ],
        )
      ],
    );
  }
}