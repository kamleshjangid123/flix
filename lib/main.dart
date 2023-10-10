import 'package:flix/src/Component/Kamlesh.dart';
import 'package:flix/src/extra/Cast.dart';
import 'package:flix/src/Component/Flix.dart';
import 'package:flix/src/extra/Check.dart';
import 'package:flix/src/extra/Footer.dart';
import 'package:flix/src/Component/List.dart';
import 'package:flix/src/screen/Bollywood.dart';
import 'package:flix/src/screen/Homepage.dart';
import 'package:flix/src/screen/Mp3.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Flix(),
    );
  }
}
