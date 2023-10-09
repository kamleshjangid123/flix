import 'package:flutter/material.dart';

class Deawer extends StatefulWidget {
  const Deawer({super.key});

  @override
  State<Deawer> createState() => _DeawerState();
}

class _DeawerState extends State<Deawer> {
  @override
  Widget build(BuildContext context) {
           
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height:h ,
        width: w,
        child: Text("kamlesh"),
      ),
    );
  }
}