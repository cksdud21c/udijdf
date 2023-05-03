import 'package:flutter/material.dart';
import 'package:untitled/screens/closet_screens/screen_camera.dart';
class closet_Page extends StatelessWidget {
  const closet_Page({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 67, 117),
        title: Text(title+': 옷장'),
      ),
      body: CameraExample(),

    );
  }
}