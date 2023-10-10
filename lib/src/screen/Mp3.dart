import 'package:flix/src/Component/Flix.dart';
import 'package:flix/src/screen/Homepage.dart';
import 'package:flutter/material.dart';

class Mp3 extends StatefulWidget {
  const Mp3({super.key});
  
  @override
  State<Mp3> createState() => _Mp3State();
}

class _Mp3State extends State<Mp3> {
  @override
  Widget build(BuildContext context) {

    var songname=['one','two','three','four','five'];
    var singername=['1st','2nd','3rd','4th','5th'];
    
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title:Center(child:  
      Text("Flix",style: TextStyle(color: Color.fromARGB(255, 98, 185, 232),fontSize: 35,fontWeight: FontWeight.bold,))
      )),
      body:SafeArea(child:
      ListView.separated(itemBuilder: (context, index){
        return ListTile(
          leading:CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/music.jpg'),
          ),
          title: Text('song'),
          subtitle: Text('Singer name'),
          trailing: Icon(Icons.play_circle),
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


/*
 bottomNavigationBar:Container(
       height: h*.1,
        width: w,
        child:Center(child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage())),
                        child:
          Text('Movies',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 98, 185, 232),fontWeight: FontWeight.bold ),),),
          
          Text('Music',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 98, 185, 232),fontWeight: FontWeight.bold ),)
        ],),)
      )
      */