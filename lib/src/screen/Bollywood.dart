import 'package:flutter/material.dart';

class Bollywood extends StatefulWidget {
  const Bollywood({super.key});

  @override
  State<Bollywood> createState() => _BollywoodState();
}

class _BollywoodState extends State<Bollywood> {
  @override
  Widget build(BuildContext context) {
       
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(body:  
    Container(
      height: h,
      width: w,
      margin: EdgeInsets.all(5),
      child:SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: h*.25,
          width: w,
          child:SingleChildScrollView(scrollDirection: Axis.horizontal,
          child:
           Row(
            children: [
              Image.asset('assets/images/gadar2.jpg',fit: BoxFit.cover,),
              Image.asset('assets/images/pathan.jpg',fit: BoxFit.cover,height: h*.25,width: w,),
              Image.asset('assets/images/tu jhuti.jpg',fit: BoxFit.cover,height: h*.25,width: w,)

            ],
          ),)
        ),
        Container(
          height: h*.04,
          width: w,
          margin: EdgeInsets.only(top: 5),
          child: Text("New Release",style: TextStyle(fontSize: 20),),
        ),
        Container(
          height: h*.25,
          width: w,
          color: Colors.lime,
           child:SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(children: [
            Image.asset('assets/images/fateh.jpg',height: h*.5,width: w*.45,fit: BoxFit.cover,),
              Image.asset('assets/images/booth police.jpg',height: h*.5,width: w*.45,fit: BoxFit.cover,),
              Image.asset('assets/images/Raees.jpg',height: h*.5,width: w*.45,fit: BoxFit.cover,),
              Image.asset('assets/images/suraj pe mangal.jpg',height: h*.5,width: w*.45,fit: BoxFit.cover,)
          ],),)
        ),

         Container(
          height: h*.04,
          width: w,
          margin: EdgeInsets.only(top: 5),
          child: Text("Popular on Flix",style: TextStyle(fontSize: 20),),
        ),
        Container(
          height: h*.25,
          width: w,
          color: Colors.lime,
           child:SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(children: [
            Image.asset('assets/images/english.jpg',height: h*.4,width: w*.45,fit: BoxFit.cover,),
              Image.asset('assets/images/tamasha.jpg',height: h*.4,width: w*.45,fit: BoxFit.cover,),
              Image.asset('assets/images/drishyam.jpg',height: h*.5,width: w*.45,fit: BoxFit.cover,),
              Image.asset('assets/images/bhagmilkha.jpg',height: h*.5,width: w*.45,fit: BoxFit.cover,)
          ],),)
        )
        
      ],),)

    ),);
  }
}
