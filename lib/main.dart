import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:multivendor/splash/onboard.dart';
import 'package:multivendor/splash/splash.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'model/cart_data.dart';


void main() {  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => DataModel()),
           ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
           home: ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: () => const Splash(),
          ),
        )
    );
  }
}