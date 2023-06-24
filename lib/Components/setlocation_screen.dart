import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

void main() {
  runApp(MaterialApp(
    home: SetLocationPage(),
  ));
}

class SetLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Set Your Location',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(int.parse('FF6440', radix: 16)).withOpacity(1.0),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'This data won\'t be displayed in your\naccount profile for security',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 120.0),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      color: Colors.orange,
                      strokeWidth: 1,
                      dashPattern: [5, 5],
                      child: Container(
                        height: 60.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Icon(
                                Icons.add,
                                size: 50.0,
                                color: Colors.orange,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Text(
                                'Set Your Location',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(int.parse('FF6440', radix: 16)).withOpacity(1.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signupsuccesspage');// Navigate to the next page
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(int.parse('FF6440', radix: 16)).withOpacity(1.0),
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
