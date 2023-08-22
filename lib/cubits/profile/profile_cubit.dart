import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dream_social_app/constant.dart';
import 'package:dream_social_app/models/modelperson.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  void getmodeluser() {
    FirebaseFirestore.instance
        .collection('users')
        .doc(modeluser!.email)
        .get()
        .then((value) {
      modeluser = modelPerson.fromJson(value.data());
    });
    emit(ProfileInitial());
  }
}
