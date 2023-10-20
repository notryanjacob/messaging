import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:messaging/screens/chat_screen.dart';
import 'package:messaging/screens/login_screen.dart';
import 'package:messaging/screens/registration_screen.dart';
import 'package:messaging/screens/welcome_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const WelcomeScreen(),
        '/first': (_) => const LoginScreen(),
        '/second': (_) => const RegistrationScreen(),
        '/third': (_) => const ChatScreen(),
      },
    );
  }
}
