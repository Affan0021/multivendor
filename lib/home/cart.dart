import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor/model/cart_data.dart';
import 'package:provider/provider.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  int count = 0;
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
          children: <Widget>[

           Container(
           height: 600.h,
                width: 400.w,
                child: Consumer<DataModel>(
                  builder: (context, todo, child) {
                    return ListView.builder(
                        itemCount: todo.taskList.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {

                          return Container(
                              width: 400.w,
                              height: 130.h,
                              color: Colors.greenAccent,
                              child: Row(children: [
                                SizedBox(
                                  width: 150.w,
                                ),
                                Column(
                                  children: [
                                    Container(
                                        child: Text(
                                      todo.taskList[index].Title,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'OpenSans',
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),

                                    Container(
                                        child: Text(
                                      todo.taskList[index].price,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'OpenSans',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )),

                                    Container(
                                        child: Text(
                                      todo.taskList[index].mrp,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'OpenSans',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )),
                                    // SizedBox(height: 20.h,),

                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () => setState(() =>
                                                count != 0 ? count-- : count),
                                            icon: Icon(Icons.arrow_downward)),
                                        Text(count.toString()),
                                        IconButton(
                                            onPressed: () =>
                                                setState(() => count++),
                                            icon: Icon(Icons.arrow_upward)),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  width: 60.w,
                                  height: 60.h,
                                  margin: EdgeInsets.only(bottom: 57.h),
                                  child: Image.asset(
                                    todo.taskList[index].image,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                        color: Colors.blue,
                                      ),
                                      child: RotatedBox(
                                        quarterTurns: 3,
                                        child: Text(
                                          '1L',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'OpenSans',
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                        color: Colors.red,
                                      ),
                                      child: RotatedBox(
                                        quarterTurns: 3,
                                        child: Text(
                                          'x5',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'OpenSans',
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              Divider(thickness: 3,color: Colors.red,),

                              ]),
                              margin: EdgeInsets.only(bottom: 15.h, ),

                          );

                        }
                    );
                  },
                ),

            ),
            Divider(thickness: 3,color: Colors.red,),




          ],
          ),


          ]
        )
        )
    );
  }

//   Widget buildcard(String title , String price , String quantity , String image) =>  Container(
//
//     width: 400.w,
//     height: 150.h,
//     child: Stack(
//          children: [
//
//            Column(
//               children: [
//
//              Container(
//
//                  margin: EdgeInsets.only(left: 90.w),
//                   alignment: Alignment.center,
//                  child: Text(title,
//                    style: TextStyle(
//                      color: Colors.black,
//                      fontFamily: 'OpenSans',
//                      fontSize: 22.sp,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  )
//              ),
//
//              Container(
//
//                  margin: EdgeInsets.only(left: 90.w),
//                  alignment: Alignment.center,
//                  child: Text(quantity,
//                    style: TextStyle(
//                      color: Colors.black,
//                      fontFamily: 'OpenSans',
//                      fontSize: 15.sp,
//                      fontWeight: FontWeight.w400,
//                    ),)
//              ),
//
//              Container(
//                  alignment: Alignment.center,
//                  margin: EdgeInsets.only(left: 90.w),
//                  child: Text(price,
//                    style: TextStyle(
//                      color: Colors.black,
//                      fontFamily: 'OpenSans',
//                      fontSize: 15.sp,
//                      fontWeight: FontWeight.w400,
//                    ),)
//              ),
// ]
//            ),
//            Container(
//              width: 100.w,
//              height: 60.h,
//              margin: EdgeInsets.only(left: 230.w,top: 10.h),
//              child: Image.asset(image,),
//
//            ),
//            Row(
//              children: [
//                Text('data',
//                  style: TextStyle(
//                  color: Colors.black,
//                  fontFamily: 'OpenSans',
//                  fontSize: 22.sp,
//                  fontWeight: FontWeight.bold,
//                ),),
//              ],
//            )
//          ],
//        ) ,
//
//         // Container(
//         //     height: 40.h,
//         //     width: 180.w,
//         //     child: ElevatedButton(
//         //       onPressed: ()
//         //
//         //       {
//         //         // Navigator.push(
//         //         //   context,
//         //         //   MaterialPageRoute(builder: (context) => Login()),
//         //         // );
//         //
//         //       },
//         //
//         //
//         //       style: ButtonStyle(
//         //
//         //         backgroundColor: MaterialStateProperty.resolveWith<Color>(
//         //               (Set<MaterialState> states) {
//         //             if (states.contains(MaterialState.pressed))
//         //               return Colors.white;
//         //             return Colors.green;
//         //           },
//         //         ),
//         //
//         //       ),
//         //
//         //
//         //       child: Text(
//         //         'خریدیں',
//         //         style: TextStyle(
//         //           color: Colors.white,
//         //           fontFamily: 'OpenSans',
//         //           fontSize: 22.sp,
//         //           fontWeight: FontWeight.bold,
//         //         ),
//         //       ),
//         //     )
//         // ),
//
//
//     decoration: BoxDecoration(
//         color: Colors.grey,
//         // borderRadius: BorderRadius.circular(20.r)
//     ),
//
//   );

}
