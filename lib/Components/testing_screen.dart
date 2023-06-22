import 'package:flutter/material.dart';

class TestingScreen extends StatelessWidget {
  const TestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: -200,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: 250,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(150)
                    ),
                    child: const Padding (
                      padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                      child: Text(
                        'Duds',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        )
                      )
                    )
                  ),
                ],
              )
            )
          ]
        )
      )
    );
  }
}