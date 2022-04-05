import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/location.dart';


class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  final formKey = GlobalKey<FormState>();
  String username = '';
  String email = '';
  String password = '';
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();




  Widget build(BuildContext context) {


    return  Scaffold(
        backgroundColor: Colors.blueGrey,


        key: _scaffoldkey,
        body: Form(
        key: formKey,
            child: SingleChildScrollView(
                child: Stack(children: <Widget>[
                Align(
                alignment: Alignment.center,

                    child: Column(
                    children: [



                      SizedBox(
                        height: 40.h,
                      ),

                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'اندراج کریں',
                          style: TextStyle(

                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,


                          ),


                        ),


                      ),



                      SizedBox(
                        height: 5.h,
                      ),


                      Container(

                        color: Colors.transparent,
                        child: Text(
                          ' اپنی تفصیلات درج کریں ',
                          style: TextStyle(

                            color: Colors.black87,
                            fontFamily: 'OpenSans',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,


                          ),


                        ),


                      ),

                      SizedBox(
                        height: 20.h,
                      ),

                      Container(

                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 50.h,horizontal: 100.w),
                        // color: Colors.orangeAccent,
                        child: Image.asset(
                          'images/logo.png',

                        ),


                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                       // phone
                       buildPhone(),

                      SizedBox(
                        height: 20.h,
                      ),
                      buildName(),
                      SizedBox(
                        height: 20.h,
                      ),
                     buildshop(),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 40,
                        width: 250,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'OpenSans',

                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 15.w,bottom: 5.h),

                            hintText: 'کیا آپ دکان پر ہیں؟',
                            hintStyle: TextStyle(
                              color: Colors.white, // <-- Change this
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),

                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          // color: const Color(0xff7cb1b6),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [

                          SizedBox(width: 75.w,),
                          Container(
                              height: 35.h,
                              width: 90.w,
                              child: ElevatedButton(
                                onPressed: ()

                                {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => Login()),
                                  // );

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
                                  '\tنہیں',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontFamily: 'OpenSans',
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                          ),
                          SizedBox(width: 40.w,),
                          Container(
                              height: 35.h,
                              width: 90.w,
                              child: ElevatedButton(
                                onPressed: ()

                                {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => Login()),
                                  // );

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
                                  '\tہاں',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontFamily: 'OpenSans',
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                          ),

                        ],
                      ),



                      SizedBox(
                        height: 30.h,
                      ),

                      Container(
                          height: 40.h,
                          width: 130.w,
                          child: ElevatedButton(
                            onPressed: ()

                            {
                              // final isValid = formKey.currentState!.validate();
                              // FocusScope.of(context).unfocus();
                              //
                              //
                              //
                              // if (isValid) {
                              //   formKey.currentState!.save();
                              //
                              //   //  buildsignauth();
                              //
                              // };
                              Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Location()));


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
                              '\tسائن اپ',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontFamily: 'OpenSans',
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                      ),


                      SizedBox(
                        height: 20.h,
                      ),



                    ],
                    )
                  )


                ]
            )

        )

        )
    );

  }

  Widget buildPhone() =>    Container(
    // height: 40.h,
    width: 250.w,
      child:  TextFormField(
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              // width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          // contentPadding: const EdgeInsets.only(top: 11.0),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          // labelText: 'Phone',
          hintText: '+92     \tاپنا فون نمبر درج کریں',
          hintStyle: TextStyle(
            color: Colors.white, // <-- Change this
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          errorStyle: TextStyle(
            color: Colors.red, // <-- Change this
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.normal,
          ),


        ),


validator: (value) {
if (value!.length < 1) {
return 'Please fill this field';
}
},
onSaved: (value) => setState(() => password = value!),
keyboardType: TextInputType.visiblePassword,

)

  );
  Widget buildName() =>      Container(
    // height: 40.h,
      width: 250.w,
      child:  TextFormField(
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: 1.h, horizontal: 10.w),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              // width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          // contentPadding: const EdgeInsets.only(top: 11.0),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          // labelText: 'Phone',
          hintText: 'اپنا پورا نام درج کریں',
          hintStyle: TextStyle(
            color: Colors.white, // <-- Change this
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          errorStyle: TextStyle(
            color: Colors.red, // <-- Change this
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.normal,
          ),


        ),


        validator: (value) {
          if (value!.length < 1) {
            return 'Please fill this field';
          }
        },
        onSaved: (value) => setState(() => password = value!),
        keyboardType: TextInputType.visiblePassword,

      )

  );
  Widget buildshop() =>  Container(
    // height: 40.h,
      width: 250.w,
      child:  TextFormField(
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              // width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          // contentPadding: const EdgeInsets.only(top: 11.0),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          // labelText: 'Phone',
          hintText: '+92     \tاپنا فون نمبر درج کریں',
          hintStyle: TextStyle(
            color: Colors.white, // <-- Change this
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          errorStyle: TextStyle(
            color: Colors.red, // <-- Change this
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.normal,
          ),


        ),


        validator: (value) {
          if (value!.length < 1) {
            return 'Please fill this field';
          }
        },
        onSaved: (value) => setState(() => password = value!),
        keyboardType: TextInputType.visiblePassword,

      )

  );
}

// validator: (value) {
// if (value!.length < 7) {
// return 'Password must be at least 7 characters long';
// }
// },
// onSaved: (value) => setState(() => password = value!),
// keyboardType: TextInputType.visiblePassword,
// hintText: 'اپنا پورا نام درج کریں',
