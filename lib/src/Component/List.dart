import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
         
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;

    return Scaffold(body: 
    Container(
      height: h,
      width: w,
      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
          child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Container(
          height: h*.08,
          width: w,
          padding: EdgeInsets.symmetric(horizontal: 15),
          color:  Color.fromARGB(255, 98, 185, 232),
          
          child: SingleChildScrollView(scrollDirection: Axis.horizontal,
          child:
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Text("  Bollywood   ",style: TextStyle(color: Colors.white,fontSize: 20),),
            Text("   Hollywood   ",style: TextStyle(color: Colors.white,fontSize: 20),),
            Text("   South Indian  ",style: TextStyle(color: Colors.white,fontSize: 20),),
            Text("   Chinese  ",style: TextStyle(color: Colors.white,fontSize: 20),),
          ],),)
        )],
      ),)
    ),);
  }
}