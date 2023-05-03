import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/home_screen.dart';
import 'package:untitled/screens/screen_index.dart';
class closet_home_Page extends StatelessWidget {
  const closet_home_Page({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 67, 117),
        title: Text(title+': 옷장'),
      ),
      body: const HomeScreen(),
    );
  }
}