import 'package:flutter/material.dart';

class Cast extends StatefulWidget {
  const Cast({super.key});

  @override
  State<Cast> createState() => _CastState();
}

class _CastState extends State<Cast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 98, 185, 232),
        child: Icon(Icons.cast),
        onPressed: () => print('Cast') ,
      ),
      
    );
  }
}