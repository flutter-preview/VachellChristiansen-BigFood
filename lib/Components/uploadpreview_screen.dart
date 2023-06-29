import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late User _user;
  late String _email;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    _user = _auth.currentUser!;
    final DocumentSnapshot userSnapshot =
        await _firestore.collection('users').doc(_user.uid).get();

    setState(() {
      _email = _user.email!;
    });
  }

  void _signOut() async {
    await _auth.signOut();
    Navigator.pop(context); // Kembali ke halaman sebelumnya setelah logout
  }

  void _deleteAccount() async {
    // Tambahkan logika untuk menghapus akun pengguna di sini
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage('assets/profile_image.jpg'),
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oke',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          _email,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Nomor Telepon',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 70, // Atur posisi turun ikon edit di sini
                  right: 0,
                  child: GestureDetector(
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
                    child: Icon(Icons.edit),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
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
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: _signOut,
                  child: Text('Log Out'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(int.parse('FF6440', radix: 16)).withOpacity(1.0), // Warna oranye
                    minimumSize: Size(double.infinity, 48.0),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _deleteAccount,
                  child: Text('Delete Account'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, // Warna abu-abu
                    minimumSize: Size(double.infinity, 48.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
