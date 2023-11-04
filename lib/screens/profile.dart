import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Implement action for adding new information/settings
            },
          ),
        ],
        backgroundColor: Colors.teal, // Color for the AppBar
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'T.R. Perera',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'perera@gmail.com',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // View Profile Information
                            },
                            child: Text('view'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.teal, // Button color
                              onPrimary: Colors.white, // Text color
                            ),
                          ),
                          SizedBox(width: 10),
                          OutlinedButton(
                            onPressed: () {
                              // Edit Profile Information
                            },
                            child: Text('edit'),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.teal, // Text color
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image url
                  radius: 40.0,
                ),
              ],
            ),
          ),
          Card(
            color: Colors.teal.shade300, // Card background color
            margin: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'chat history...',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image url
                    ),
                    title: Text(
                      '..................',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'just now',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  // Repeat ListTiles for each chat history item
                  // ...
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
