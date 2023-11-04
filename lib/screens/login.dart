import 'package:assistant/screens/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'), // AppBar with a title for the login page
        backgroundColor: Colors.teal, // Consistent AppBar color with the Create Account page
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome Back', // A welcome back text
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal, // Consistent text color with the Create Account page
                ),
              ),
              SizedBox(height: 20.0),
              // TextField for the email
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal), // Border color when the TextField is focused
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.0),
              // TextField for the password
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal), // Consistent border color with the email field
                  ),
                ),
                obscureText: true, // Hides the password
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Action when 'Login' button is pressed
                },
                child: Text('Login'), // Text on the button
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // Button color consistent with the theme
                  onPrimary: Colors.white, // Text color on the button
                ),
              ),
              TextButton(
                onPressed: () {
                  // Action to navigate to the Create Account page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text('Create Account'), // Text for navigation to the Create Account page
                style: TextButton.styleFrom(
                  primary: Colors.teal, // Text color consistent with the theme
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
