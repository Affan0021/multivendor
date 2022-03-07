import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor/Register/signin.dart';
import 'package:multivendor/Register/signup.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override

  Widget build(BuildContext context) {






    return  Scaffold(
          backgroundColor: Colors.blueGrey,
        body: Container(

            child: Stack(
                children: <Widget>[



                  Column(
                    children: [



                      SizedBox(
                        height: 40.h,
                      ),

                      Container(
                        alignment: Alignment.center,
                         child: Text(
                          'یادگار بازار میں خوش آمدید',
                          style: TextStyle(

                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold,


                          ),


                        ),


                      ),



                      SizedBox(
                        height: 5.h,
                      ),


                      Container(

                        color: Colors.transparent,
                        child: const Text(
                         'اب ہم آپ کو قیمتوں کے ساتھ اپ ڈیٹ کریں',
                          style: TextStyle(

                            color: Colors.black87,
                            fontFamily: 'OpenSans',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,


                          ),


                        ),


                      ),

                      SizedBox(
                        height: 60.h,
                      ),

                      Container(

                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 50.h,horizontal: 100.w),
                        // color: Colors.orangeAccent,
                        child: Image.asset(
                          'images/logo.PNG',

                        ),


                      ),

                      SizedBox(
                        height: 100.h,
                      ),

                      Container(
                           height: 50.h,
                           width: 200.w,
                          child: ElevatedButton(
                            onPressed: ()

                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Signin()),
                              );

                            },


                            style: ButtonStyle(

                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.white;
                                  return Colors.purple;
                                },
                              ),
                              shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(
                                          color: Colors.white)
                                  )
                              ),

                            ),


                            child: Text(
                              'لاگ ان',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSans',
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                      ),


                      SizedBox(
                        height: 20.h,
                      ),



                      Container(

                          height: 50.h,
                          width: 200.w,
                          child: ElevatedButton(
                              onPressed: ()

                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Signup()),
                              );

                            },


                            style: ButtonStyle(

                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.white;
                                  return Colors.purple;
                                },
                              ),
                              shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(
                                          color: Colors.white)
                                  )
                              ),

                            ),

                            child: Text(
                              '\tاپلای کریں',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSans',
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                      )


                    ],
                  )


                ]
            )

        )


    );

  }

}
