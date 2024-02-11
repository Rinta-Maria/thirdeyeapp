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
        title: const Text(
          'HOME',
          style: TextStyle(
            color: Color.fromARGB(255, 2, 2, 2),
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFA8A7A5),
        leading: IconButton(
          onPressed: () {
            // Handle back button press here
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 6, 6, 6),
            size: 35,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle account circle button press here
            },
            icon: const Icon(
              Icons.account_circle,
              color: Color.fromARGB(255, 6, 6, 6),
              size: 35,
            ),
          ),
        ],
      ),
        
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/thirdeyeglass.jpg"),
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
      ),
    
    );
  }
}
