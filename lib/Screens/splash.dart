import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String img = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    img =
        "https://www.imnepal.com/wp-content/uploads/2022/08/1080p-Mahabharat-Krishna-Images-HD-Picture.jpeg";
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, 'home');
      },
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.imnepal.com/wp-content/uploads/2022/08/1080p-Mahabharat-Krishna-Images-HD-Picture.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
