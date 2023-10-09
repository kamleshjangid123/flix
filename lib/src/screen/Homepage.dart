import 'package:flix/src/extra/Cast.dart';
import 'package:flix/src/Component/Flix.dart';
import 'package:flix/src/extra/Footer.dart';
import 'package:flix/src/Component/List.dart';
import 'package:flix/src/extra/Play.dart';
import 'package:flix/src/screen/Bollywood.dart';
import 'package:flix/src/screen/Mp3.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 
  @override
  Widget build(BuildContext context) {
    
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;

    return Scaffold(
      
      appBar: AppBar(title:Center(child:  
      Text("Flix    ",style: TextStyle(color: Color.fromARGB(255, 98, 185, 232),fontSize: 35,fontWeight: FontWeight.bold,))
      )),
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
       floatingActionButton:FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 98, 185, 232),
        child: Icon(Icons.cast),
        onPressed: () => print('Cast') ,
      ),
     
      drawer: Drawer(
        width: w*.6,
        
        child: Column(
          children: [
            DrawerHeader(
              
              child: Column(
              children: [ClipRRect(
                child:
                Image.asset('assets/images/profile.jpg',height: 80,width: 120,),
                borderRadius: BorderRadius.circular(200),
                ),
                
                Text('\nKamlesh')
              ],
            )),
            Container(
              height: h*.3,
              child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: h*.05,
                    margin: EdgeInsets.only(left: 15),
                    child: Row(children: [
                      Icon(Icons.home,size: 40,color: Color.fromARGB(255, 98, 185, 232),),
                      Text('     Home',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 98, 185, 232)),)
                    ]),
                  ),
                   Container(
                    height: h*.05,
                    margin: EdgeInsets.only(left: 15),
                    child: Row(children: [
                      Icon(Icons.settings,size: 40,color: Color.fromARGB(255, 98, 185, 232),),
                      Text('     Setting',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 98, 185, 232)),)
                    ]),
                  ),
                   Container(
                    height: h*.05,
                    margin: EdgeInsets.only(left: 15),
                    child: Row(children: [
                      Icon(Icons.language,size: 40,color: Color.fromARGB(255, 98, 185, 232),),
                      Text('     Language',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 98, 185, 232)),)
                    ]),
                  )
                  , Container(
                    height: h*.05,
                    margin: EdgeInsets.only(left: 15),
                    child: Row(children: [
                      Icon(Icons.contact_support,size: 40,color: Color.fromARGB(255, 98, 185, 232),),
                      Text('     Contact',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 98, 185, 232)),)
                    ]),
                  )
                  
                ],
              ),
            )
            
          ],
        ),
      ),
      
     body:Container(child: Column(children: [
     
      Container(
        height: h*.08,
        child: List(),
      ),
     
     Container(
     height: h*.72,
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
      ],),),
      
      bottomNavigationBar:Container(
       height: h*.1,
        width: w,
        child:Center(child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text('Movies',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 98, 185, 232),fontWeight: FontWeight.bold ),),
           TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Mp3())),
                        child:
          Text('Music',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 98, 185, 232),fontWeight: FontWeight.bold ),))
        ],),)
      )     

    );
  }
}

/*

        items: const[
        BottomNavigationBarItem(
          
          icon: Icon(Icons.movie),
        label: 'Movies',),
         BottomNavigationBarItem(
          
          
          icon: Icon(Icons.music_video),
        label: 'Music',),
      ]
      */