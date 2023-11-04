import 'package:assistant/screens/assistant.dart';
import 'package:assistant/screens/login.dart';
import 'package:assistant/screens/profile.dart';
// import 'package:assistant/screens/createaccount.dart'; // Keep this commented if not in use.
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(), // This sets AssistantScreen as the home screen.
    );
  }
}

// The MyHomePage class seems redundant here if you're directly navigating to AssistantScreen.
// However, if you plan to use MyHomePage, here is the corrected version:

class MyHomePage extends StatelessWidget {
  void _navigateToAssistantScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to the Main Page',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () => _navigateToAssistantScreen(context),
                child: Text('Go to Assistant Screen'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Background color for ElevatedButton in newer Flutter versions is set with backgroundColor.
                  onPrimary: Colors.white, // Text Color (Foreground color) is set with foregroundColor.
                ),
              ),
              // Uncomment the following code when you have an image asset
              /*
              SizedBox(height: 20.0),
              Image.asset(
                'assets/robot_image.png', // Replace with your actual robot image asset path
                height: 100, // Adjust height accordingly
                width: 100, // Adjust width accordingly
              ),
              */
            ],
          ),
        ),
      ),
    );
  }
}
