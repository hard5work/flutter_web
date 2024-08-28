import 'package:flutter/material.dart';
import 'package:flutter_web/home.dart';

void main() => runApp(const SignUpApp());

class SignUpApp extends StatelessWidget {
  const SignUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Homepage(),
      },
    );
  }
}
