import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gigo/mainPage.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([]);
    //Set the fit size (fill in the screen size of the device in the design,in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'GIGO',
          theme: ThemeData(
            fontFamily: 'nanumGothic',
            primarySwatch: Colors.blue,
        ),
          home: child,
        );
      },
      child: const MyHomePage(title: 'GIGO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.to(mainPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Color(0xff5b6354),
                width: 360.w,
                height: 345.h
              ),
              Positioned(
                top: 265.0.h,
                left: 35.0.w,
                  child: Text(
                    "GIGO 하다",
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
          Container(
            width: 360.w,
            height: 328.h,
            margin: EdgeInsets.only(left:35.0.w),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20.h,
                ),
                Text (
                  "GARBAGE-IN",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: 'namumGothic', fontWeight: FontWeight.w700,
                    color: Color(0xff5b6354),
                  ),
                ),
                Text (
                  "GARBAGE-OUT",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: 'namumGothic', fontWeight: FontWeight.w700,
                    color: Color(0xff5b6354),
                  ),
                ),
              ],
            ),
          )
        ]
      ),
    );
  }
}
