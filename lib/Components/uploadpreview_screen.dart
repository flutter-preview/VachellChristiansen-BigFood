import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Profile',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 7.0),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      'johndoe@example.com',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      '1234567890',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Edit Profile'),
                        // Add your form or input fields here
                        actions: [
                          TextButton(
                            onPressed: () {
                              // Perform save or update action
                              Navigator.of(context).pop();
                            },
                            child: Text('Save'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.edit),
                    SizedBox(width: 20.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.payment),
                  trailing: Icon(Icons.arrow_forward),
                  title: Text('Payment Method'),
                  onTap: () {
                    // Action when Payment Method is clicked
                      Navigator.pushNamed(context, '/payment');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  trailing: Icon(Icons.arrow_forward),
                  title: Text('My Orders'),
                  onTap: () {
                    // Action when My Orders is clicked
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  trailing: Icon(Icons.arrow_forward),
                  title: Text('Help'),
                  onTap: () {
                    // Action when Help is clicked
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // Action when Log Out button is clicked
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Log Out',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(int.parse('FF6440', radix: 16))
                          .withOpacity(1.0),
                      minimumSize: Size(double.infinity, 48.0),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Action when Delete Account button is clicked
                      Navigator.pushNamed(context, '/deleteaccount');
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Delete Account',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(int.parse('646464', radix: 16))
                          .withOpacity(1.0),
                      minimumSize: Size(double.infinity, 48.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.0),
        ],
      ),
    );
  }
}
