import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UploadProfilePage(),
  ));
}

class UploadProfilePage extends StatelessWidget {
  Future<void> _pickImage(BuildContext context) async {
    final XTypeGroup typeGroup = XTypeGroup(
      label: 'images',
      extensions: ['jpg', 'jpeg', 'png'],
    );

    final List<XFile> pickedImages = await openFiles(
      acceptedTypeGroups: [typeGroup],
    );

    if (pickedImages != null && pickedImages.isNotEmpty) {
      // Image selected, do something with it
      String imagePath = pickedImages[0].path;
      // ...
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                textAlign: TextAlign.center,
                'Upload your photo \nprofile',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'This data will be displayed in your \naccount profile for security',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 80.0),
              Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 194, 191, 191), // Ganti dengan warna abu-abu yang Anda inginkan
                ),
                child: RawMaterialButton(
                  onPressed: () {
                    _pickImage(context); // Panggil fungsi untuk memilih gambar
                  },
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24.0),
                  child: Icon(
                    Icons.person,
                    size: 150.0,
                    color: Color.fromARGB(255, 117, 116, 116),
                  ),
                ),
              ),

              SizedBox(height: 40.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  UploadProfile(
                    onPressed: () {
                      _pickImage(context); // Panggil fungsi untuk memilih gambar
                    },
                  ),
                ],
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
      ),
    );
  }
}

class UploadProfile extends StatelessWidget {
  const UploadProfile({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: TextButton(
        onPressed: onPressed, // Menggunakan callback onPressed yang diberikan
        style: TextButton.styleFrom(
          primary: Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 100.0),
        ),
        child: Center(
          child: Text(
            'Replace or edit image',
            style: TextStyle(fontSize: 15.0, color: Color.fromRGBO(255, 100, 64, 1)),
          ),
        ),
      ),
    );
  }
}