import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TestFirestoreScreen extends StatefulWidget {
  const TestFirestoreScreen({Key? key}) : super(key: key);

  @override
  State<TestFirestoreScreen> createState() => _TestFirestoreScreenState();
}

class _TestFirestoreScreenState extends State<TestFirestoreScreen> {
  var db = FirebaseFirestore.instance;

  void addUser() async {
    final user = <String, dynamic>{
      "first": "Ada",
      "last": "Lovelace",
      "born": 1815
    };

    try {
      DocumentReference docRef =
          await FirebaseFirestore.instance.collection('users').add(user);
      print('DocumentSnapshot added with ID: ${docRef.id}');
    } catch (error) {
      print('Error adding document: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: addUser,
        child: Icon(Icons.add),
      ),
    );
  }
}
