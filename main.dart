import 'dart:async';
import 'package:flutter/material.dart';
import 'package:thireyeapp/pages/Home.dart';
import 'package:thireyeapp/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ProfileApp(), // Set the splash screen as the home screen
      routes: {
        '/home': (context) => HomePage(), // Add your home page route
        '/login': (context) => LoginPage(), // Add your login page route
        '/signup': (context) => SignupPage(),
        '/profile':(context) => ProfileApp(), // Add your signup page route
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay the navigation to the next screen using a timer
    Timer(
      Duration(seconds: 3), // Adjust the duration as needed
      () => Navigator.pushReplacementNamed(context, '/home'), // Replace '/home' with your actual home route
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 150.0,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Text('Login Page Content'),
      ),
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Page'),
      ),
      body: Center(
        child: Text('Signup Page Content'),
      ),
    );
  }
}