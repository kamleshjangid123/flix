import 'dart:async';

import 'package:flix/src/screen/Homepage.dart';
import 'package:flutter/material.dart';

class Flix extends StatefulWidget {
  const Flix({super.key});

  @override
  State<Flix> createState() => _FlixState();
}

class _FlixState extends State<Flix> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage(),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(body:  
    Container(
     
      color:  Color.fromARGB(255, 98, 185, 232),
      child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Flix",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 55,fontWeight:FontWeight.w700)),
        Text('created by kamlesh',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),)
      ],),),
    )
    );
  }
}