import 'package:dream_social_app/cubits/Login/login_cubit.dart';
import 'package:dream_social_app/cubits/bottomNavBar/bottom_nav_bar_cubit.dart';
import 'package:dream_social_app/cubits/editProfile/editprofile_cubit.dart';
import 'package:dream_social_app/cubits/register/register_cubit.dart';
import 'package:dream_social_app/firebase_options.dart';
import 'package:dream_social_app/screens/home/homeScreen.dart';
import 'package:dream_social_app/screens/splashView/splachScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const SocialApp());
}

class SocialApp extends StatelessWidget {
  const SocialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => BottomNavBarCubit()),
        BlocProvider(create: (context) => EditprofileCubit(),)
      ],
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                    systemNavigationBarColor: Colors.white,
                    statusBarColor: Colors.black))),
        debugShowCheckedModeBanner: false,
        home: splashScreen(),
      ),
    );
  }
}
