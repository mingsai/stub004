import 'dart:io' show Platform;
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:stub004/home.dart';

//bool isPortrait = true;
void main() {
  _setTargetPlatformForDesktop();
  runApp(MyApp());
}

void _setTargetPlatformForDesktop() {
  // No need to handle macOS, as it has now been added to TargetPlatform.
  if (Platform.isLinux || Platform.isWindows) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stub004',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.red[100], //const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
        fontFamily: 'Merriweather',
      ),
      home: const MyHomePage(),
    );
  }
}
