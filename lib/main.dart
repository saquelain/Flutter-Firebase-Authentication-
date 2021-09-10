import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat_app3/constants.dart';
import 'package:flash_chat_app3/screens/chat_screen.dart';
import 'package:flash_chat_app3/screens/login_screen.dart';
import 'package:flash_chat_app3/screens/registration_screen.dart';
import 'package:flash_chat_app3/screens/welcome_screen.dart';



void main() async {
  //initialize firebsae
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: WelcomeScreen(),
      // if you are using initial routes then home property can not be used
      initialRoute: WelcomeScreen.id,
      //if you are using slash '/' named routes, you have to initialize at least
      //one routes to only '/' otherwise it will crash your app
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
