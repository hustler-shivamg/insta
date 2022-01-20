import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram/responsive/mobile_screen_layout.dart';
import 'package:instagram/responsive/responsive_screen_layout.dart';
import 'package:instagram/responsive/web_screen_layout.dart';
import 'package:instagram/screens/login_screen.dart';
import 'package:instagram/screens/signup_screen.dart';
import 'package:instagram/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: "AIzaSyDaoK3ls9epXuQ3ecK-hRlAPt2Ig9ov-68",
      appId: "1:565587956412:web:3e1b5bfa55333ec8bdb6b9",
      messagingSenderId: "565587956412",
      projectId: "instagram-clone-9cb3a",
      storageBucket: "instagram-clone-9cb3a.appspot.com",
    ));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: mobileSearchColor),
      // home: Scaffold(
      //   body: ResponsiveLayout(
      //     mobileScreen: MobileScreenLayout(),
      //     webScreen: WebScreenLayout(),
      //   ),
      // ),

      // home: LoginScreen(),
      home: SignUpScreen(),
    );
  }
}
