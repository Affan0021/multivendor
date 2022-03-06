

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(alignment:Alignment.center,child:Text('ٹوکری ',textAlign: TextAlign.center,),
          ),
          backgroundColor: Colors.blueGrey,
          automaticallyImplyLeading: false,

        ),
        body: SingleChildScrollView(

          child: Stack(
            children: [

              Column(
                children: [
                  SizedBox(height: 15.h,),
                  // buildcard('کافی','Rs 120.57','Rs 106','images/coffee.png'),

                ],
              )
            ],
          ),



        )
    );
  }

  Widget buildcard(String title , String price , String quantity , String image) =>  Container(

    width: 400.w,
    height: 150.h,
    child: Stack(
         children: [

           Column(
              children: [

             Container(

                 margin: EdgeInsets.only(left: 90.w),
                  alignment: Alignment.center,
                 child: Text(title,
                   style: TextStyle(
                     color: Colors.black,
                     fontFamily: 'OpenSans',
                     fontSize: 22.sp,
                     fontWeight: FontWeight.bold,
                   ),
                 )
             ),

             Container(

                 margin: EdgeInsets.only(left: 90.w),
                 alignment: Alignment.center,
                 child: Text(quantity,
                   style: TextStyle(
                     color: Colors.black,
                     fontFamily: 'OpenSans',
                     fontSize: 15.sp,
                     fontWeight: FontWeight.w400,
                   ),)
             ),

             Container(
                 alignment: Alignment.center,
                 margin: EdgeInsets.only(left: 90.w),
                 child: Text(price,
                   style: TextStyle(
                     color: Colors.black,
                     fontFamily: 'OpenSans',
                     fontSize: 15.sp,
                     fontWeight: FontWeight.w400,
                   ),)
             ),
]
           ),
           Container(
             width: 100.w,
             height: 60.h,
             margin: EdgeInsets.only(left: 230.w,top: 10.h),
             child: Image.asset(image,),

           ),
           Row(
             children: [
               Text('data',
                 style: TextStyle(
                 color: Colors.black,
                 fontFamily: 'OpenSans',
                 fontSize: 22.sp,
                 fontWeight: FontWeight.bold,
               ),),
             ],
           )
         ],
       ) ,

        // Container(
        //     height: 40.h,
        //     width: 180.w,
        //     child: ElevatedButton(
        //       onPressed: ()
        //
        //       {
        //         // Navigator.push(
        //         //   context,
        //         //   MaterialPageRoute(builder: (context) => Login()),
        //         // );
        //
        //       },
        //
        //
        //       style: ButtonStyle(
        //
        //         backgroundColor: MaterialStateProperty.resolveWith<Color>(
        //               (Set<MaterialState> states) {
        //             if (states.contains(MaterialState.pressed))
        //               return Colors.white;
        //             return Colors.green;
        //           },
        //         ),
        //
        //       ),
        //
        //
        //       child: Text(
        //         'خریدیں',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontFamily: 'OpenSans',
        //           fontSize: 22.sp,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     )
        // ),


    decoration: BoxDecoration(
        color: Colors.grey,
        // borderRadius: BorderRadius.circular(20.r)
    ),

  );

}
