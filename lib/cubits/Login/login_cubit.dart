import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dream_social_app/constant.dart';
import 'package:dream_social_app/models/modelperson.dart';
import 'package:dream_social_app/screens/home/homeScreen.dart';
import 'package:meta/meta.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  modelPerson? model;
  void login({required String email, required String password}) async {
    emit(loginLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      FirebaseFirestore.instance
          .collection('users')
          .doc(email)
          .get()
          .then((value) {
        modeluser = modelPerson.fromJson(value.data());
      }).catchError(() {});
      emit(loginSuccess());
    } on Exception catch (e) {
      emit(loginFauiler());
    }
  }
}
