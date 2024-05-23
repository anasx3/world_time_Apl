import 'package:flutter/material.dart';
import 'package:flutter_world_time_app_final/pages/Loading.dart';
import 'package:flutter_world_time_app_final/pages/home.dart';
import 'package:flutter_world_time_app_final/pages/location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const Location(),
      },
    );
  }
}
