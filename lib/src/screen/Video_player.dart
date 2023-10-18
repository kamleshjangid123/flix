import 'package:flutter/material.dart';

class Video_player extends StatefulWidget {
  const Video_player({super.key});

  @override
  State<Video_player> createState() => _Video_playerState();
}

class _Video_playerState extends State<Video_player> {
  @override
  Widget build(BuildContext context) {
       
var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        

      ),
    );
  }
}