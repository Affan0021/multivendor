import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:multivendor/splash/onboard.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=> Get.to(SecondSplash())
    );

  }
  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 50.h,horizontal: 100.w),
      color: Colors.orangeAccent,
      child: Image.asset(
        'images/logo.PNG',

      ),


    );
  }
}