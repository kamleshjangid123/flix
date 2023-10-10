
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider( options: CarouselOptions(
          height: 400,
          
        ),
        items: _source.map((i){
          return Builder(
            builder: (BuildContext context){
              return Container(
                margin: EdgeInsets.symmetric(horizontal:10 ),
                decoration: BoxDecoration(
                  color: i
                ),
              );
            },);
        },).toList()
      ),
    ),);
  }
  final List _source = [Colors.black,Colors.brown,Colors.amber];
}