import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MusicProduction extends StatelessWidget{
  final String title;

  MusicProduction({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xFF181926),
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF181926),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Text(
          'You tapped on "$title"',
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),);
  }
}