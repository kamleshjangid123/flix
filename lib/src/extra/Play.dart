import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
      
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(
      body:Container(
        height: h,
        width: w,
        color: Colors.white,
        child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: h*.5,
              width: w,
              child: Column(children: [
                Text('Are You Mad',style: TextStyle(fontSize: 20,color:Colors.red ),),
                Text('Yes',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 98, 185, 232)),)
              ],),
            )
          ],
        ),),
      ) ,
    );
  }
}