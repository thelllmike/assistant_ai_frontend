import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'), // AppBar with a title for the registration page
        backgroundColor: Colors.teal, // Consistent AppBar color with the other pages
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Create New Account', // A text for the registration header
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal, // Consistent text color with the theme
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
              // TextField for the confirm password
              TextField(
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal), // Consistent border color with the other fields
                  ),
                ),
                obscureText: true, // Hides the confirm password
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Action when 'Register' button is pressed
                },
                child: Text('Register'), // Text on the button
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // Button color consistent with the theme
                  onPrimary: Colors.white, // Text color on the button
                ),
              ),
              TextButton(
                onPressed: () {
                  // Action to navigate to the Login page
                  Navigator.pop(context);
                },
                child: Text('Already have an account? Login'), // Text for navigation to the Login page
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
