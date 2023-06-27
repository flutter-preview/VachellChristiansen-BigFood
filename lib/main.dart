import 'package:duds/Components/onboarding_two_screen.dart';
import 'package:duds/Components/resetpass_screen.dart';
import 'package:duds/Components/testing_screen.dart';
import 'package:duds/Components/loading_screen.dart';
import 'package:duds/constants.dart';
import 'package:duds/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Components/login_screen.dart';
import 'Components/onboarding_one_screen.dart';
import 'Components/payment_screen.dart';
import 'Components/setlocation_screen.dart';
import 'Components/signupsuccess_screen.dart';
import 'Components/successnotification_screen.dart';
import 'Components/testfirestore_screen.dart';
import 'Components/uploadphoto_screen.dart';
import 'Components/signup_process_screen.dart';
import 'Components/signup_screen.dart';
import 'Components/verificationcode_screen.dart';
import 'Components/viamethod_screen.dart';
import 'Components/home.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
      initialRoute: '/welcome',
      routes: {
        '/': (context) => const LoadingScreen(),
        '/welcome': (context) => const OnboardingOneScreen(),
        '/welcome2': (context) => const OnboardingTwoScreen(),
        '/testing': (context) =>  TestingScreen(),
        '/payment': (context) =>  const PaymentMethodPage(),
        '/signup1': (context) =>  SignUpProcess(),
        '/login': (context) =>  LoginScreen(),
        '/signup': (context) =>  SignUpScreen(),
        '/verification': (context) =>  VerificationScreen(),
        '/profile': (context) =>  UploadProfilePage(),
        '/viamethod': (context) =>  ViaMethodScreen(),
        '/resetpass' : (context) => ResetPasswordPage(),
        '/successnotif' : (context) => SuccessNotif(),
        '/signupsuccesspage' : (context) => SignUpSuccessPage(),
        '/setlocationpage' : (context) => SetLocationPage(),
        '/homepage' : (context) => HomePage(),
        '/firestore' : (context) => const TestFirestoreScreen(),
      },
    );
  }
}
