import 'package:bloc/bloc.dart';
import 'package:dream_social_app/constant.dart';
import 'package:dream_social_app/models/modelperson.dart';
import 'package:dream_social_app/screens/home/homeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  modelPerson? model;
  CollectionReference collection =
      FirebaseFirestore.instance.collection('user');
  void register({
    required String uid,
    required String email,
    required String password,
    required String phone,
    required String birthData,
    required String nationality,
    required String name,
  }) async {
    emit(RegisterLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      FirebaseFirestore.instance.collection('users').doc('$email').set({
        'birthData': birthData,
        'email': email,
        'password': password,
        'nationality': nationality,
        'phone': phone,
        'name':name,
        'uid':email,
        'bio':'write any thing for bio',
        'imagecover':'http://www.shadowsphotography.co/wp-content/uploads/2017/12/photography-01-800x400.jpg',
        'imageprofile':'http://www.shadowsphotography.co/wp-content/uploads/2017/12/photography-01-800x400.jpg'
      });
      FirebaseFirestore.instance
          .collection('users')
          .doc(email)
          .get()
          .then((value) {
        modeluser = modelPerson.fromJson(value.data());
      }).catchError(() {});
      emit(RegisterSuccess());
    } on Exception catch (e) {
      emit(RegisterFauiler());
    }
  }
}
