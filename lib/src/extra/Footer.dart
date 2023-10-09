import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  var img=["movie.png","video.png","audio.png"];
  var name=["Movies","Songs","MP3"];
 
  @override
  Widget build(BuildContext context) {
         
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    
    return Scaffold(body:
    Container(
      height: h,
      width: w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Container(
          height: h*.06,
          width: w,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25),),border: Border.all(color:Color.fromARGB(255, 98, 185, 232) )),
          
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children:[
              for (var i=0; i<3;i++)
              Container(
                child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Image.asset('assets/images/${img[i]}',height: 25,width: 25,color: Color.fromARGB(255, 98, 185, 232),),
            Text('${name[i]}',style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 98, 185, 232)),)

          ],
            
          ),

              )] 
          ),


        )]),
    )
    );
  }}
   
      
    


