import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(child: Column(children: [
        Container(
          height: h*.1,
          width: w,
          child: Center(child:  Text('Setting',style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 98, 185, 232) ),),),
        ),
        Container(
          height: h*.5,
          width: w*.6,
          decoration: BoxDecoration(border: Border.all(color:Color.fromARGB(255, 98, 185, 232),width: 5,),
          borderRadius: BorderRadius.all(Radius.circular(25),),
          boxShadow: [BoxShadow(blurRadius: 15,
                                  color: Color.fromARGB(210, 135, 134, 134),
                                 
                                offset: Offset(0,15) )],
                                  color: const Color.fromARGB(255, 255, 255, 255)),
          child: Center(child: Text('Coming Soon'),),
        )
      ],)),
    );
  }
}