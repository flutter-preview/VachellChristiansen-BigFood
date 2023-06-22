import 'package:duds/constants.dart';
import 'package:flutter/material.dart';

class OnboardingSecondScreen extends StatelessWidget {
  const OnboardingSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg-welcome.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: -215,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: 275,
                      height: 500,
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.circular(150)
                      ),
                      child: Padding (
                        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                        child: Column(
                          children: [
                            const Text(
                              'Food is\nWhere Your Comfort Food Resides',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                              child: Text(
                                'Enjoy a fast and smooth food delivery at your doorstep',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Color(0xFF646464),
                                ),
                              ), 
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFF6440)
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                                        textStyle: const TextStyle(fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/welcome2');
                                      },
                                      child: const Text('Next'),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]
                        )
                      )
                    ),
                  ],
                )
              )
            ]
          )
        )
      )
    );
  }
}