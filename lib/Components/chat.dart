
import 'package:flutter/material.dart';

void main() {
  runApp(Chat());
}

class Chat extends StatefulWidget {
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Text('Chat'),
    
  );

}