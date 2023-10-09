import 'package:flutter/material.dart';

class Kamlesh extends StatefulWidget {
  const Kamlesh({super.key});

  @override
  State<Kamlesh> createState() => _KamleshState();
}

class _KamleshState extends State<Kamlesh> {
  @override
  Widget build(BuildContext context) {
   
    return Container(
              decoration: BoxDecoration(image: DecorationImage(image:AssetImage('assets/images/music.jpg'),
              fit: BoxFit.cover
              )),

              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      
                      colors: [
                        Colors.black.withOpacity(1),
                        Colors.black.withOpacity(2)
                      ], ),
                  ),
                ),
              ),
      );
    
  }
}