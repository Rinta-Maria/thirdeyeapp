import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Simulating connectivity status, replace this with actual logic.
  bool isConnected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Glasses App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assests/thirdeyeglass.jpg', // Corrected asset path
            height: 150,
            width: 150,
          ),
          SizedBox(height: 20),
          Text(
            isConnected ? 'Connected' : 'Disconnected', // Display connection status
            style: TextStyle(
              fontSize: 20,
              color: isConnected ? Colors.green : Colors.red, // Change color based on status
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Icon(
            Icons.mic,
            size: 60,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
