part of 'bottom_nav_bar_cubit.dart';

@immutable
sealed class BottomNavBarState {}

final class BottomNavBarInitial extends BottomNavBarState {}
final class BottomNavBarLoading extends BottomNavBarState {}
final class BottomNavBarchange extends BottomNavBarState {}

final class BottomNavBaraddpost extends BottomNavBarState {}
