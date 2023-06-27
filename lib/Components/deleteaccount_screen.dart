import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DeleteAccount(),
    );
  }
}

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Delete Account',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'You can delete your account',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 80.0),
              Padding(
  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
  child: InkWell(
    onTap: () {
      // Action when "YES" text is clicked
    },
    child: Ink(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Card(
        elevation: 0.5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              'YES',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    ),
  ),
),
Padding(
  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
  child: InkWell(
    onTap: () {
      // Action when "NO" text is clicked
    },
    child: Ink(
      decoration: BoxDecoration(
        color: const Color.fromARGB(0, 83, 78, 78),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Card(
        elevation: 0.5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              'NO',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    ),
  ),
),

            ],
          ),
        ),
      ),
    );
  }
}

