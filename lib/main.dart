import 'package:FlutterChatApp/constants.dart';
import 'package:FlutterChatApp/services/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat App',
      theme: ThemeData(
        primaryColor: themeColor,
      ),
      home: AuthService(title: 'Flutter CHAT App'),
      debugShowCheckedModeBanner: false,
    );
  }
}
