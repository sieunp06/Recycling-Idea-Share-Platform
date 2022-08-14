import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Set the fit size (fill in the screen size of the device in the design,in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'GIGO',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /*Container(
            color: Color(0xff5b6354),
            width: 360.w,
            height: 345.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 250,
                ),
                Text(
                  "GIGO 하다",
                  style: TextStyle(
                    fontSize: 40.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),*/
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
                      fontWeight: FontWeight.bold,
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
                    fontWeight: FontWeight. bold,
                    color: Color(0xff5b6354),
                  ),
                ),
                Text (
                  "GARBAGE-OUT",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight. bold,
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
