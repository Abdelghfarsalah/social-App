import 'package:dream_social_app/screens/RegisterPage/widget/RegisterPageBody.dart';
import 'package:flutter/material.dart';
class registerPage extends StatelessWidget {
  const registerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(child: registerpagebody()),
      
    );
  }
}