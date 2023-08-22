part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class loginLoading extends LoginState {}
final class loginSuccess extends LoginState {

}
final class loginFauiler extends LoginState {}