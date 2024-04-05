import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:reddify_app/firebase_options.dart';
import 'package:reddify_app/theme/pallete.dart';
import 'features/auth/screens/login_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reddify',
      theme: Pallete.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}
