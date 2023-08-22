import 'package:bloc/bloc.dart';
import 'package:dream_social_app/models/modelperson.dart';
import 'package:dream_social_app/screens/addpost/addpostscreen.dart';
import 'package:dream_social_app/screens/home/homeScreen.dart';
import 'package:dream_social_app/screens/home/homeScreens/homescreenbody.dart';
import 'package:dream_social_app/screens/home/homeScreens/notificationscreenbody.dart';
import 'package:dream_social_app/screens/home/homeScreens/settingScreenBody.dart';
import 'package:dream_social_app/screens/home/homeScreens/usersscreenbody.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());
  int currentindex = 4;

  List<Widget> screen =  [
    settingpage(),
    userpage(),
    addpost(),
    notificationpage(),
    homescreenbody(),
  ];
  
  void changescreen({required int index}) {
    emit(BottomNavBarLoading());
    if (index == 2) {
      emit(BottomNavBaraddpost());
    } else {
      currentindex = index;
      emit(BottomNavBarchange());
    }
  }
}
