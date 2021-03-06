import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'Screen/WrapperScreen.dart';
import 'Services/authService.dart';
import 'Screen/showFullNewScreen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StreamProvider<User?>.value(
    value: AuthService().user,
    initialData: null,
    child: MaterialApp(
      home: WrapperScreen(),
    ),
  ));
}

