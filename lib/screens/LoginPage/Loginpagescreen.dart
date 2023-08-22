import 'package:dream_social_app/screens/LoginPage/loginpagebody.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(child: loginpagebody()),
      
    );
  }
}