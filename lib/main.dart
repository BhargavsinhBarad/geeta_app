import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gita/Screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/details.dart';
import 'Screens/intro.dart';
import 'Screens/shlok.dart';
import 'Screens/splash.dart';

void main() async {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => Splash(),
        'home': (ctx) => home(),
        'shlok': (ctx) => shlok(),
        'details': (ctx) => details(),
      },
    ),
  );
}
