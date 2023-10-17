import 'package:flix/src/extra/Cast.dart';
import 'package:flix/src/Component/Flix.dart';
import 'package:flix/src/extra/Footer.dart';
import 'package:flix/src/Component/List.dart';
import 'package:flix/src/extra/Play.dart';
import 'package:flix/src/screen/Bollywood.dart';
import 'package:flix/src/screen/Contact.dart';
import 'package:flix/src/screen/Movies.dart';
import 'package:flix/src/screen/Mp3.dart';
import 'package:flix/src/screen/Setting.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _pagesData = [const Movies(),const Mp3()];
 int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;

    return Scaffold(
      
      appBar: AppBar(title:Center(child:  
      Text("Flix    ",style: TextStyle(color: Color.fromARGB(255, 98, 185, 232),fontSize: 35,fontWeight: FontWeight.bold,))
      )),
     
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
                    child: TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting())),
                        child:
                     Row(children: [
                      Icon(Icons.settings,size: 40,color: Color.fromARGB(255, 98, 185, 232),),
                      Text('     Setting',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 98, 185, 232)),)
                    ]),)
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
                    child:
                     TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact())),
                        child:
                     Row(children: [
                      Icon(Icons.contact_support,size: 40,color: Color.fromARGB(255, 98, 185, 232),),
                      Text('     Contact',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 98, 185, 232)),)
                    ]),)
                  )
                  
                ],
              ),
            )
            
          ],
        ),
      ),
      
     body:Container(child:_pagesData[_selectedItem],
     ),
      
     
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.movie),label: 'Movies',),
        BottomNavigationBarItem(icon: Icon(Icons.music_note),label: 'Music')
      ],
      currentIndex: _selectedItem,
      onTap: (setValue){
        setState(() {
          _selectedItem = setValue;
        });
      },
      ),    

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