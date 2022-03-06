import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(alignment:Alignment.center,child:Text('پروفائل دیکھیں',textAlign: TextAlign.center,),
          ),
          backgroundColor: Colors.blueGrey,
          automaticallyImplyLeading: false,

        ),
        body: SingleChildScrollView(

          child: Stack(
            children: [

              Container(

                margin: EdgeInsets.only(left: 100.w,top: 50.h),
                child:  Text(
                  'will make with backend',

                )
              ),




            ],
          ),



        )
    );
  }
}
