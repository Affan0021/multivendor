import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(alignment:Alignment.center,child:Text('تعارف',textAlign: TextAlign.center,),
        ),
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: false,

      ),
      body: SingleChildScrollView(

       child: Stack(
         children: [

           Container(
             width: 170.w,
             height: 100.h,
             margin: EdgeInsets.only(left: 100.w,top: 50.h),
             child: DecoratedBox(
               decoration: new BoxDecoration(
                 image: new DecorationImage(
                     image: new AssetImage('images/logo.png'),
                     fit: BoxFit.fill),
               ),
             ),
           ),

           Column(
             children: [


               SizedBox(
                 height: 170.h,
               ),
               Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 20.w),
                  child: Text('ماری دکان 24 گھنٹے میں ڈیلیوری فراہم کرے گی',

                   textAlign: TextAlign.end,
                   style: TextStyle(
                     color: Colors.black87,
                     fontFamily: 'OpenSans',
                     fontSize: 18.sp,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),

               SizedBox(
                 height: 20.h,
               ),
               Container(
                 alignment: Alignment.centerRight,
                 margin: EdgeInsets.only(right: 20.w),
                 child: Text('- ہماری دکان شہر کی سب سے بڑی دکانوں میں سے ایک ہے',

                   textAlign: TextAlign.end,
                   style: TextStyle(
                     color: Colors.black87,
                     fontFamily: 'OpenSans',
                     fontSize: 18.sp,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),

               SizedBox(
                 height: 20.h,
               ),
               Container(
                 alignment: Alignment.centerRight,
                 margin: EdgeInsets.only(right: 20.w),
                 child: Text('ہم آپ کو یقین دلاتے ہیں کہ ہم بہترین مواد فراہم کریں گے',

                   textAlign: TextAlign.end,
                   style: TextStyle(
                     color: Colors.black87,
                     fontFamily: 'OpenSans',
                     fontSize: 18.sp,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),

               SizedBox(
                 height: 20.h,
               ),
               Container(
                 alignment: Alignment.centerRight,
                 margin: EdgeInsets.only(right: 20.w),
                 child: Text('اگر آپ کو کوئی مسئلہ ہے تو ہم سے رابطہ کریں',

                   textAlign: TextAlign.end,
                   style: TextStyle(
                     color: Colors.black87,
                     fontFamily: 'OpenSans',
                     fontSize: 18.sp,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),

               SizedBox(
                 height: 20.h,
               ),
               Container(
                 alignment: Alignment.center,
                 // margin: EdgeInsets.only(right: 20.w),
                 child: Text('1 : 03333333333333',

                   textAlign: TextAlign.end,
                   style: TextStyle(
                     color: Colors.black87,
                     fontFamily: 'OpenSans',
                     fontSize: 18.sp,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),


               SizedBox(
                 height: 10.h,
               ),
               Container(
                 alignment: Alignment.center,
                 // margin: EdgeInsets.only(right: 20.w),
                 child: Text('2 : 02222222222222',

                   textAlign: TextAlign.end,
                   style: TextStyle(
                     color: Colors.black87,
                     fontFamily: 'OpenSans',
                     fontSize: 18.sp,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),

               SizedBox(
                 height: 10.h,
               ),
               Container(
                 alignment: Alignment.center,
                 // margin: EdgeInsets.only(right: 20.w),
                 child: Text('3 : 01111111111111',

                   textAlign: TextAlign.end,
                   style: TextStyle(
                     color: Colors.black87,
                     fontFamily: 'OpenSans',
                     fontSize: 18.sp,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
             ],
           )



         ],
       ),



      )
    );
  }
}
