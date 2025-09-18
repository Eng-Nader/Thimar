import 'package:flutter/material.dart';
import 'package:thimar/auth/login_view.dart';

void main() {
  runApp(const Thimar());
}

class Thimar extends StatelessWidget {
  const Thimar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginView());
  }
}
