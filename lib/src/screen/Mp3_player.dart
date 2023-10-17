import 'package:flutter/material.dart';

class Mp3_player extends StatefulWidget {
  const Mp3_player({super.key});

  @override
  State<Mp3_player> createState() => _Mp3_playerState();
}

class _Mp3_playerState extends State<Mp3_player> {
  @override
  Widget build(BuildContext context) {
    
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title:Center(child:  Text('Music Player    ',
        style: TextStyle(color: Colors.red,fontSize: 25,
        fontWeight: FontWeight.bold),),),backgroundColor: Colors.black,
      ),
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(gradient: LinearGradient(
          colors:[Color.fromARGB(255, 237, 73, 73),Color.fromARGB(255, 62, 9, 9)],
        )),
        child: Column(
          children: [
           Container(
            margin: EdgeInsets.all(8),
            height: h*.2,
            width: w,
            child: Center(child: Column(
              children: [
                Text('Song_Name....',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text('Singer_Name...',style: TextStyle(fontSize: 18),)  
                 ],
            ),),
           ),
         Container(height: h*.4,
         width: w*.5,
         child:Center(child: Image.asset('assets/images/musicplay.jpg',),)),
         Container(
                height: h*.1,
                width: w*.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Icon(Icons.skip_previous,size: 40,),
                  Icon(Icons.play_arrow,size: 90,),
                  Icon(Icons.skip_next,size: 40,),
                 
                ],),
         )
        ],),
      ),
    );
  }
}

/*colors:[Color.fromARGB(255, 237, 73, 73),Color.fromARGB(255, 158, 52, 52),Color.fromARGB(255, 62, 9, 9)],*/