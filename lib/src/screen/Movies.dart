import 'package:flutter/material.dart';
import 'package:flix/src/Component/List.dart';
import 'package:flix/src/screen/Bollywood.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
       floatingActionButton:FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 98, 185, 232),
        child: Icon(Icons.cast),
        onPressed: () => print('Cast') ,
      ),
     
      body: Container(
        height:h ,
        width:w ,
        child: Column(children: [
     
      Container(
        height: h*.08,
        child: List(),
      ),
     
     Container(
     height: h*.757,
     width: w,
     color: Colors.white,
     child: SingleChildScrollView(
      child:
     
      Column(children: [
     /* Container(
        height: h*.1,
        child: Flix(),
      ),*/
      
      
      Container(
        height: h*.75,
        width: w,
        child: Bollywood(),
      ),
     
      /*Container(
        width: w,
        height: h*.06,
        
        child: Footer(),
      )*/
     ],),
     )
        
      ),
      ],) ,
      ),
    );
  }
}