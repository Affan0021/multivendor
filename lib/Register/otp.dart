
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor/home/home.dart';
import 'package:pinput/pin_put/pin_put.dart';


class Search extends StatefulWidget {

  var title , code;
  Search({ this.title  });


  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  var _verificationCode;

  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: const Color.fromRGBO(43, 46, 66, 1),
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: const Color.fromRGBO(126, 203, 224, 1),
    ),
  );


  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            child: Text(
              'پن نمبر',
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.blueGrey[400],
          automaticallyImplyLeading: false,

        ),
        backgroundColor: Colors.blueGrey,
        key: _scaffoldkey,
        body: SingleChildScrollView(
            child: Stack(
              //      Column(
                children: [


                  Column(

                    children: [

                      SizedBox(
                        height: 120.h,
                      ),

                      Container(
                         child: Text(
                          'نمبر پر 6 ہندسوں کا کوڈ بھیج دئا گیا ہے',
                          style: TextStyle(

                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,


                          ),


                        ),


                      ),

                      SizedBox(height: 100.h,),

                      Container(

                        child: PinPut(
                          fieldsCount: 6,
                          withCursor: true,

                          textStyle: TextStyle(
                            fontSize: 25.sp,
                            color: Colors.red,
                          ),
                          eachFieldWidth: 30.w,
                          eachFieldHeight: 60.h,
                          fieldsAlignment: MainAxisAlignment.spaceEvenly,
                          // onSubmit: (String pin) => _showSnackBar(p
                          focusNode: _pinPutFocusNode,
                          controller: _pinPutController,
                          submittedFieldDecoration: pinPutDecoration.copyWith(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          selectedFieldDecoration: pinPutDecoration.copyWith(color: Colors.tealAccent),
                          followingFieldDecoration: pinPutDecoration.copyWith(
                            borderRadius: BorderRadius.circular(6.r),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            ),
                          ),
                          pinAnimationType: PinAnimationType.fade,

                          onSubmit: (pin) async {
                            try {
                              await FirebaseAuth.instance
                                  .signInWithCredential(PhoneAuthProvider.credential(
                                  verificationId: _verificationCode, smsCode: pin))
                                  .then((value) async {
                                if (value.user != null) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(builder: (context) => Home()),
                                          (route) => false);
                                }
                              });
                            } catch (e) {
                              FocusScope.of(context).unfocus();
                              _scaffoldkey.currentState!
                                  .showBottomSheet((context) => Container(
                                color: Colors.red,
                                child : Text('wrong code'),
                              ));
                            }
                          },
                        ),


                      ),

                      SizedBox(height: 60.h,),
                      Container(
                          height: 40.h,
                          width: 180.w,
                          child: ElevatedButton(
                            onPressed: ()

                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
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
                              '\tسائن ان',
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
                  )

                ]

            )
        )

    );
  }



  _verifyPhone() async
  {
    await FirebaseAuth.instance.verifyPhoneNumber(

        phoneNumber: '${widget.title}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                      (route) => false);
            }
            else
            {
              print('not logged in');
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verficationID, resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }


  void initState() {
    // TODO: implement initState
    super.initState();
    _verifyPhone();
  }

}
