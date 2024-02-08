import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class User {
  final String name;
  final String email;
  final String phone;
  final String deviceid;

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.deviceid,
  });
}

class AuthService {
  static User currentUser = User(
    name: 'xyz',
    email: 'xyz.com',
    phone: '0123456789',
    deviceid: '23434345',
  );

  static void logout(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/login');
  }
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
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
              AuthService.logout(context);
            },
          ),
        ],
      ),
      backgroundColor: Colors.white, // Set the background color to white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              AuthService.currentUser.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            
            SizedBox(height: 20),
            _buildInfoCard('Email', AuthService.currentUser.email),
            _buildInfoCard('Phone', AuthService.currentUser.phone),
            _buildInfoCard('Location', AuthService.currentUser.deviceid),
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
}
