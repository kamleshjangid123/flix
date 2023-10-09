import 'package:flix/src/Component/Flix.dart';
import 'package:flutter/material.dart';

class Mp3 extends StatefulWidget {
  const Mp3({super.key});

  @override
  State<Mp3> createState() => _Mp3State();
}

class _Mp3State extends State<Mp3> {
  @override
  Widget build(BuildContext context) {
    
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title:Center(child:  
      Text("Flix",style: TextStyle(color: Color.fromARGB(255, 98, 185, 232),fontSize: 35,fontWeight: FontWeight.bold,))
      )),
      body:SafeArea(child:
      Column(
        children: [
         Container(
            height: h*.6,
            width: w,
            child: Column(
              children: [
                Container(
                  height: h*.1,
                  width: w*.8,
                  child: Row(children: [
                    Image.asset('assets/images/sinatra.jpg'),
                   SizedBox(width: 20),
                    Text("Sway With Me"),
                    
                  ],),
                )
              ],
            ),
          )
        ],
      ) 
      ) ,
    );
  }
}