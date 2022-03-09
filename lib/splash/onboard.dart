import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor/Register/registration.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:get/get.dart';
class SecondSplash extends StatefulWidget {
  const SecondSplash({Key? key}) : super(key: key);

  @override
  _SecondSplashState createState() => _SecondSplashState();
}

class _SecondSplashState extends State<SecondSplash> {

  var FruitList = [
    'ہم اپنے ٹاؤن میں بہترین مشروبات فراہم کر رہے ہیں جو کمپنیوں کی اصلیت اسے دیگر دکانوں سے مختلف بناتی ہے',
    'ہم اپنے ٹاؤن میں بہترین مشروبات فراہم کر رہے ہیں جو کمپنیوں کی اصلیت اسے دیگر دکانوں سے مختلف بناتی ہے',
    'ہم اپنے ٹاؤن میں بہترین مشروبات فراہم کر رہے ہیں جو کمپنیوں کی اصلیت اسے دیگر دکانوں سے مختلف بناتی ہے',
    'ہم اپنے ٹاؤن میں بہترین مشروبات فراہم کر رہے ہیں جو کمپنیوں کی اصلیت اسے دیگر دکانوں سے مختلف بناتی ہے',
    'ہم اپنے ٹاؤن میں بہترین مشروبات فراہم کر رہے ہیں جو کمپنیوں کی اصلیت اسے دیگر دکانوں سے مختلف بناتی ہے',
    'ہم اپنے ٹاؤن میں بہترین مشروبات فراہم کر رہے ہیں جو کمپنیوں کی اصلیت اسے دیگر دکانوں سے مختلف بناتی ہے',
    'ہم اپنے ٹاؤن میں بہترین مشروبات فراہم کر رہے ہیں جو کمپنیوں کی اصلیت اسے دیگر دکانوں سے مختلف بناتی ہے',
  ];

  @override
  int activeindex = 0;
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(

        child: Stack(
          children: <Widget>[

            Column(
              children: [

                Container(
                  width: double.infinity,

                  alignment: Alignment.center,
                  child: CarouselSlider(

                    options: CarouselOptions(
                      height:  500.h,
                      reverse: true,

                      viewportFraction: 1,
                      onPageChanged: (index , reason)  =>
                          setState(() => activeindex = index),
                       autoPlay: true,
                        autoPlayAnimationDuration: Duration(seconds: 2),

                    ),


                    items: ['images/drinks.png','images/biscuits.png','images/lipton.png','images/coffee.png','images/detol.png','images/masala.png','images/shampoo.png'].map((i) {

                      return Builder(

                          builder : (BuildContext context) {
                            itemCount: FruitList.length;
                            return Container(
                              width: MediaQuery.of(context).size.width,

                              margin : EdgeInsets.symmetric(horizontal: 5.0),
                              child: Column(
                                children: [
                                  // Image.asset(i),
                                  Container(
                                    child: Image.asset(i,
                                      width: 200.w,
                                      height: 200.h,

                                    ),
                                  ),


                                  SizedBox( height:  10,),
                                  if (i == 'images/drinks.png')
                                    Text(
                                      '${FruitList[0]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  if (i == 'images/biscuits.png')
                                    Text(
                                      '${FruitList[1]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  if (i == 'images/lipton.png')
                                    Text(
                                      '${FruitList[2]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  if (i == 'images/coffee.png')
                                    Text(
                                      '${FruitList[3]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  if (i == 'images/detol.png')
                                    Text(
                                      '${FruitList[4]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  if (i == 'images/masala.png')
                                    Text(
                                      '${FruitList[5]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  if (i == 'images/shampoo.png')
                                    Text(
                                      '${FruitList[6]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                ],



                              ),


                            );
                          }
                      );
                    }).toList(),
                  ),


                ),

                Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    buildindicator(),

                    SizedBox(
                      width:80.w,
                    ),

                    ElevatedButton(

                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      style:
                      ButtonStyle(

                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.white;
                            return Colors.red;
                          },
                        ),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(
                                    color: Colors.white60)
                            )
                        ),

                      ),
                      child: Text(
                        '\tشروع کرنے ',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),


                    ),

                  ],

                )

              ],

            ),


          ],

        ),
      ),

    );
  }
  Widget buildindicator() =>
      AnimatedSmoothIndicator(
        activeIndex: activeindex,
        count: FruitList.length,
        effect: JumpingDotEffect(
          dotHeight: 10.h,
          dotWidth: 10.w,
          dotColor: Colors.white,
        ),


      );
}