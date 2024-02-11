import 'package:flutter/material.dart';
import 'package:thireyeapp/pages/spects.dart';

void main() {
  runApp(MyApp());
}


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              // Call a function to handle logout logic
              _logout(context);
            },
          ),
        ],
      ),
      backgroundColor: Colors.white, // Changed background color to white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.jpg'), // Replace with your image path
            ),
            SizedBox(height: 20),
            Text(
              'xyz',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Software Developer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            _buildInfoCard('Email', 'john.doe@example.com'),
            _buildInfoCard('Phone', '+1 (555) 123-4567'),
            _buildInfoCard('Location', 'City, Country'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(value),
      ),
    );
  }

  void _logout(BuildContext context) {
    // Perform logout logic here, such as clearing user session, navigating to login page, etc.

    // For demonstration purposes, let's just navigate to the login page
    Navigator.pushReplacementNamed(context, '/login'); // Replace '/login' with your actual login route
  }
}


          