import 'package:dream_social_app/cubits/bottomNavBar/bottom_nav_bar_cubit.dart';
import 'package:dream_social_app/screens/addpost/addpostscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<BottomNavBarCubit>(context);
    return SafeArea(
      child: BlocConsumer<BottomNavBarCubit, BottomNavBarState>(
        listener: (context, state) {
          if (state is BottomNavBaraddpost) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => addpost()));
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 247, 247),
            //appBar: AppBar(),
            body: cubit.screen[cubit.currentindex],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.currentindex,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.grey,
                onTap: (value) {
                  cubit.changescreen(index: value);
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.gear), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.group,size: 35,), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.heartCirclePlus),
                      label: 'Add post'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.bell), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.house), label: ''),
                ]),
          );
        },
      ),
    );
  }
}

