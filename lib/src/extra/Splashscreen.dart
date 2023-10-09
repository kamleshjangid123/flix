import 'package:flutter/material.dart';

class _SplashscreenState extends StatefulWidget {
  const _SplashscreenState({super.key});

  @override
  State<_SplashscreenState> createState() => __SplashscreenStateState();
}

class __SplashscreenStateState extends State<_SplashscreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  Color.fromARGB(255, 98, 185, 232),
        child: Center(child: Text('Flix',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w700),),),),
    );
  }
}