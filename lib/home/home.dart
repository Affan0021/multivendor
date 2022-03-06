import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor/Register/signin.dart';

import 'homepage.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override

  final tabs = [

    HomePage(),
    Signin(),
    Text('home3'),
    Text('home4'),


  ];
  int _selectedIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
          items:[
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'تلاش کریں',
                backgroundColor: Colors.blueGrey
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notes),
                label: 'تعارف',
                backgroundColor: Colors.blueGrey,

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'ٹوکری',
              backgroundColor: Colors.blueGrey,

            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'پروفائل',
              backgroundColor: Colors.blueGrey,

            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,

          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });

          },
          elevation: 5,


      ),




     body: tabs[_selectedIndex],

    );
  }



}

