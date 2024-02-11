import 'package:flutter/material.dart';
import 'package:thireyeapp/pages/profile.dart';
import 'package:thireyeapp/pages/spects.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(), // Set SplashScreen as the initial screen
    );
  }
}