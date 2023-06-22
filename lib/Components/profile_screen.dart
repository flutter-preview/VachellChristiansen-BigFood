import 'package:flutter/material.dart';

class UploadProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Transform.translate(
          offset: Offset(0, 5),
          child: Text(
            'Upload your profile photo',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              'This data will be displayed in your account profile for security',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 80.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next page
              },
              style: ElevatedButton.styleFrom(
                primary: Color(int.parse('FFFFFF', radix: 16)).withOpacity(1.0),
                padding: EdgeInsets.symmetric(vertical: 100.0),
                
              ),
              child: Text(
                'Photo',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            SizedBox(height: 40.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  UploadProfile(),                  
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next page
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
          ],
        ),
      ),
    );
  }
}

class UploadProfile extends StatelessWidget {

  const UploadProfile({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 100.0),
        title: Text(
          'Replace or edit image',
          style: 
          TextStyle(fontSize: 10.0, color: Color.fromRGBO(255, 100, 64, 1)),
        ),
      ),
    );
  }
}
