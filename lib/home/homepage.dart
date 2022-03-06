import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title:  Container(
          height: 34,
          width: 250,
          // margin: EdgeInsets.only(left: 20.w),
          child: TextField(
            textAlign: TextAlign.end,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'OpenSans',

            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(right: 10.w,bottom: 7.h),

              hintText: 'تلاش کریں',
              hintStyle: TextStyle(
                color: Colors.black87, // <-- Change this
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),

          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.transparent,
              width: 0,
            ),
            borderRadius: BorderRadius.circular(20),
            // color: const Color(0xff7cb1b6),
          ),
        ),


        leading: Icon(    Icons.search,size: 35.sp,  ),
        // automaticallyImplyLeading: false,

      ),
      body:  SingleChildScrollView(
        child: Stack(
            children: [
              Image.asset('images/backs.jpg',
              ),
              Column(
                children: [
                  Container(

                      margin: EdgeInsets.only(top: 50.h,right: 20.w),
                      child:  Text('آپ کو آپ کے دروازے پر صرف 24 گھنٹے میں آپ کی ڈیلیوری مل جائے گی',
                        textAlign: TextAlign.center,
                        style: TextStyle(

                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                        ),

                      )
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 20.w),

                    child: Text('نمایاں اشیا',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                      height: 200,
                      width: 500,

                      child: ListView(
                        scrollDirection: Axis.horizontal,

                        children: [
                          Row(
                            children: [

                              buildcard('کافی','مقدار: 6 اشیا','Rs 106','images/coffee.png'),
                              SizedBox(width: 15.w,),
                              buildcard('بسکٹ','مقدار: 4 اشیا','Rs 150','images/biscuits.png'),
                              SizedBox(width: 15.w,),
                              buildcard('ڈیٹول','مقدار: 3 اشیا','Rs 200','images/detol.png'),
                              SizedBox(width: 15.w,),
                              buildcard('مسالہ','مقدار: 4 اشیا','Rs 500','images/masala.png'),

                            ],
                          )
                        ],
                      )

                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 20.w),

                    child: Text('نمایاں اشیا',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                  ),

                  Container(
                      height: 150.h,
                      width: 500.w,

                      child: ListView(
                        scrollDirection: Axis.horizontal,

                        children: [

                          Row(
                            children: [

                              category('images/oil.jpg','تیل خریدیں'),
                              SizedBox(width: 10.w,),
                              category('images/bottle.jpg','بوتلیں خریدیں'),
                              SizedBox(width: 10.w,),
                              category('images/dry.jpg','خشک میوہ جات خریدیں'),
                              SizedBox(width: 10.w,),
                              category('images/match.jpg','مچ باکس خریدیں'),
                              SizedBox(width: 10.w,),

                            ],
                          ),


                        ],

                      )

                  ),
                  SizedBox(height: 10.h,),

                  Container(
                      height: 150.h,
                      width: 500.w,

                      child: ListView(
                        scrollDirection: Axis.horizontal,

                        children: [

                          Row(
                            children: [

                              category('images/nimko.jpg','نمکو خریدیں'),
                              SizedBox(width: 10.w,),
                              category('images/noodle.jpg','نوڈل خریدیں'),
                              SizedBox(width: 10.w,),
                              category('images/sugar.jpg','شوگر خریدیں'),
                              SizedBox(width: 10.w,),
                              category('images/perf.jpg','خوشبو خریدیں'),
                              SizedBox(width: 10.w,),

                            ],
                          ),


                        ],

                      )

                  ),

                  SizedBox(height: 10.h,),

                  Container(
                      height: 150.h,
                      width: 500.w,

                      child: ListView(
                        scrollDirection: Axis.horizontal,

                        children: [

                          Row(
                            children: [

                              category('images/cream.jpg','آئس کریم خریدیں'),
                              SizedBox(width: 10.w,),
                              category('images/bred.jpg','ڈبل روٹی خریدیں'),
                              SizedBox(width: 10.w,),
                              category('images/ketch.png','کیچپ خریدیں'),
                              SizedBox(width: 10.w,),
                              category('images/milk.jpg','دودھ خریدیں'),
                              SizedBox(width: 10.w,),

                            ],
                          ),


                        ],

                      )

                  ),
                ],
              ),
            ]
        ),
      )
    );
  }
  Widget category(String image , String title) => InkWell(

      onTap: (){},
      child: Column(

        children: [
          Container(
            width: 120.w,
            height: 100.h,

            child: DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage(image),
                    fit: BoxFit.fill),
              ),
            ),
          ),

          Container(
            height: 30.h,
            width: 120.w,
            color: Colors.orangeAccent,
            child: Text(title,

              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'OpenSans',
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],




      )
  );
  Widget buildcard(String title , String price , String quantity , String image) =>  Container(

    width: 180.w,
    height: 220.h,

    child: Column(

      children: [

        Container(
          width: 120.w,
          height: 80.h,
          alignment: Alignment.topLeft,
          child: Image.asset(image,),

        ),
        SizedBox(
          height: 10.h,
        ),
        Container(

            margin: EdgeInsets.only(right: 20.w),
            alignment: Alignment.centerRight,
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
            margin: EdgeInsets.only(right: 20.w),
            alignment: Alignment.centerRight,
            child: Text(quantity,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),)
        ),

        Container(
            margin: EdgeInsets.only(right: 20.w),
            alignment: Alignment.centerRight,
            child: Text(price,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),)
        ),
        Container(
            height: 40.h,
            width: 180.w,
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
                    return Colors.green;
                  },
                ),

              ),


              child: Text(
                'خریداری',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
        ),


      ],
    ),
    decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(5)
    ),

  );

}
