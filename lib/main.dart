import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chitter_chat/screens/welcome_screen.dart';
import 'package:chitter_chat/screens/login_screen.dart';
import 'package:chitter_chat/screens/registration_screen.dart';
import 'package:chitter_chat/screens/chat_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ChitterChat());
}

class ChitterChat extends StatelessWidget {
  const ChitterChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
