 import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);


  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(alignment:Alignment.center,child:Text('اپ ڈیٹ کریں گے ',textAlign: TextAlign.center,),
        ),
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: false,

      ),
    );
  }
}
