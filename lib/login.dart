import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Stack(
              children: [
                Container(
                    color: Color(0xffabb294),
                    width: 360.w,
                    height: 345.h
                ),
                Positioned(
                  top: 250.0.h,
                  left: 75.0.w,
                  child: Text(
                    "WELCOME",
                    softWrap: true,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                        fontSize: 42.sp,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'namumGothic', fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'ID',
                      style: TextStyle(
                        color: Color(0xffcaaf98),
                      ),
                    ),
                    TextField(

                    )
                  ],
                ),
                Row(

                )
              ],
            )
          ]
      ),
    );
  }
}