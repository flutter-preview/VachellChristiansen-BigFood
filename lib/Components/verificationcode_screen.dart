import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<VerificationScreen> {
  bool _showPassword = false;
  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();

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
                  SizedBox(height: 15.0),
                  CardBox(
                    child: Container(
                      width: 300.0, // Ubah lebar CardBox sesuai kebutuhan
                      child: Column(
                        children: [
                          SizedBox(height: 20.0),
                          Text(
                            'Enter 4 digit \nverification code',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Code send to +6282045****. This \ncode will expire in 01:30',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: BoxWrapper(
                                  child: BoxTextField(
                                    hintText: '',
                                    obscureText: true,
                                    controller: _otpController1,
                                    maxLength: 1,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: BoxWrapper(
                                  child: BoxTextField(
                                    hintText: '',
                                    obscureText: true,
                                    controller: _otpController2,
                                    maxLength: 1,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: BoxWrapper(
                                  child: BoxTextField(
                                    hintText: '',
                                    obscureText: true,
                                    controller: _otpController3,
                                    maxLength: 1,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: BoxWrapper(
                                  child: BoxTextField(
                                    hintText: '',
                                    obscureText: true,
                                    controller: _otpController4,
                                    maxLength: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30.0),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // Tambahkan logika untuk tombol login di sini
                              },
                              child: Text(
                                'Continue',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(int.parse('FF6440', radix: 16)).withOpacity(1.0),
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
  final TextEditingController? controller;
  final int? maxLength;

  const BoxTextField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.controller,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 16.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      obscureText: obscureText,
      maxLength: maxLength,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20.0),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: VerificationScreen(),
  ));
}
