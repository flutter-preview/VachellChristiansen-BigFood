import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../UserData/user_provider.dart';
import 'package:provider/provider.dart';

String hashPassword(String password) {
  final bytes = utf8.encode(password); // Konversi password ke bytes
  final hash = sha256.convert(bytes); // Lakukan hashing menggunakan SHA-256
  return hash.toString();
}

class ResetPasswordPage extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ResetPasswordPage> {
  bool _showPassword = false;
  var db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
    final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 40.0,
                    height: 40.0,
                  ),
                  Text(
                    'BigFood',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Deliver Favourite Food',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  CardBox(
                    child: Container(
                      width: 300.0, // Ubah lebar CardBox sesuai kebutuhan
                      child: Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'Reset your password \here',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            textAlign: TextAlign.center,
                            'Enter your new password and then confirm new password',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ), SizedBox(height:25),
                          BoxWrapper(
                            child: BoxTextField(
                              controller: _emailController,
                              hintText: 'Email',
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          BoxWrapper(
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                BoxTextField(
                                  controller: _passwordController,
                                  hintText: 'Password',
                                  obscureText: !_showPassword,
                                  prefixIcon: Icon(Icons.lock),
                                ),
                                IconButton(
                                  icon: Icon(
                                    _showPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          SizedBox(height: 10.0),
                          SizedBox(height: 20.0),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/verification');// Tambahkan logika untuk tombol login di sini
                              },
                              child: Text(
                                'Continue',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary:
                                    Color(int.parse('FF6440', radix: 16))
                                        .withOpacity(1.0),
                                minimumSize: Size(double.infinity, 48.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardBox extends StatelessWidget {
  final Widget child;

  const CardBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: child,
      ),
    );
  }
}

class BoxWrapper extends StatelessWidget {
  final Widget child;

  const BoxWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: child,
    );
  }
}

class BoxTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Icon? prefixIcon;
  final TextEditingController? controller;

  const BoxTextField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.prefixIcon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 16.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: prefixIcon,
      ),
      obscureText: obscureText,
    );
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        home: ResetPasswordPage(),
      ),
    ),
  );
}

