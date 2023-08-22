import 'package:dream_social_app/screens/RegisterPage/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  
  void  initState(){
    super.initState();
    gotohome();
  }
  void dispose(){
    super.dispose();
  }
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Color.fromARGB(255, 2, 50, 88)),
          ),
          Text(
            'InstaBook',
            style: TextStyle(
              fontWeight: FontWeight.w900,
                fontFamily: 'RobotoSlab',
                fontSize: 70,
                color: Color.fromARGB(255, 2, 50, 88)),
          ),
        ],
      )),
    );
  }

  void gotohome(){
  
    Future.delayed(Duration(seconds: 2),(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return registerPage();
    }));
    });
  }
}
