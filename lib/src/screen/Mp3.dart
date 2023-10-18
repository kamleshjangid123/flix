import 'package:flix/src/Component/Flix.dart';
import 'package:flix/src/screen/Homepage.dart';
import 'package:flix/src/screen/Mp3_player.dart';
import 'package:flutter/material.dart';
import 'package:flix/src/extra/Cast.dart';
import 'package:flix/src/Component/Flix.dart';
import 'package:flix/src/extra/Footer.dart';
import 'package:flix/src/Component/List.dart';
import 'package:flix/src/extra/Play.dart';
import 'package:flix/src/screen/Bollywood.dart';
import 'package:flix/src/screen/Contact.dart';
import 'package:flix/src/screen/Mp3.dart';
import 'package:flix/src/screen/Setting.dart';
import 'package:flutter/material.dart';


class Mp3 extends StatefulWidget {
  const Mp3({super.key});
  
  @override
  State<Mp3> createState() => _Mp3State();
}

class _Mp3State extends State<Mp3> {
  @override
  Widget build(BuildContext context) {

    var songimages=['sintara.jpg','pathan.jpg','tamasha.jpg','tu jhuti.jpg','Raees.jpg'];
    var songname=['one','two','three','four','five'];
    var singername=['1st','2nd','3rd','4th','5th'];
    
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
       floatingActionButton:FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 98, 185, 232),
        onPressed: () {  },
        child:
         TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Mp3_player())), 
                    child:
         Icon(Icons.play_arrow),)
        
                    
      ),
      
      body:SafeArea(child:
      ListView.separated(itemBuilder: (context, index){
        return ListTile(
          leading:CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/songimages[index]'),
          ),
          title: Text(songname[index]),
          subtitle: Text(singername[index]),
          trailing: Icon(Icons.play_circle,size: 35,),
         tileColor: Color.fromARGB(255, 194, 237, 244),
         contentPadding: EdgeInsets.all(5),
         
        );
      },
      itemCount: songname.length,
      
      
      separatorBuilder: (context, index) {
        return Divider(height: 5,thickness: 5,color: Colors.white,);
      },
      
      )
       
      ) ,

     
         
    );
  }
}
