import 'package:flutter/material.dart';
import 'package:dream_social_app/constant.dart';

class personalInfo extends StatelessWidget {
  const personalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 68,
                backgroundImage: NetworkImage('${modeluser?.imageprofile}'),
              ),
            ),
          const  SizedBox(height: 30,),
          
          ]),
    );
  }
}
