import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pode_app/screens/can_places.dart';
import 'screens/splash.dart';
import 'screens/places.dart';
import 'screens.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}





