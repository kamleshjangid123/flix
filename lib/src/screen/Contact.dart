import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
   bool isVisible = true;
       
  call() {
    UrlLauncher.launch("tel://7976560571");
  }
  Whatsapp() async {
    var whatsapp = "+919784837939";
    var whatsappAndroid =
        Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await UrlLauncher.canLaunchUrl(whatsappAndroid)) {
      await UrlLauncher.launchUrl(whatsappAndroid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
        
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(
 
      appBar: AppBar(title:
       Text('Contact Us',style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 98, 185, 232),fontWeight: FontWeight.bold),),
       centerTitle: true,),
       body: Container(
        height: h*.4,
        child:Center(child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [  Container(height: h*.1,width: w*.2,
          child:
TextButton(
                            onPressed: call,
                            child: Text('Call Now',style: TextStyle(color: Color.fromARGB(255, 246, 46, 20),fontSize: 25),),
                          ) ,),

                         

        ],
                 
        ),),)
       );
    
  }
}

class UrlLauncher {
  static void launch(String s) {}
  
  static canLaunchUrl(Uri whatsappAndroid) {}
  
  static launchUrl(Uri whatsappAndroid) {}
}
/*

TextButton(
                            onPressed: call,
                            child: Text('Call Now',style: TextStyle(color: Color.fromARGB(255, 246, 46, 20),fontSize: 25),),
                          ),
 
 SizedBox(height: h*.06,),
 Text('Whatsapp Now',
              style: TextStyle(color: Color.fromARGB(115, 0, 255, 47),
              fontSize: 25,
              fontWeight: FontWeight.bold),),*/
