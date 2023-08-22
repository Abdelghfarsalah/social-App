import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebaseStorage;
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dream_social_app/constant.dart';
import 'package:dream_social_app/models/modelperson.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'editprofile_state.dart';

class EditprofileCubit extends Cubit<EditprofileState> {
  EditprofileCubit() : super(EditprofileInitial());
  String? imagevaluec;
  String? imagevaluep;
  late File? image;
  //path image in mobile
  var imagecovermodel;
  var imageprofilemodel;

  String biomodel = modeluser!.bio;
  String namemodel = modeluser!.name;

   XFile? imagecover;
   XFile? imagprofile;
  Future<void> getimageprofile() async {
    final ImagePicker imageprofilp = ImagePicker();
    imagprofile =
        await imageprofilp.pickImage(source: ImageSource.gallery) as XFile;
    imageprofilemodel = File(imagprofile!.path);
    print(imageprofilemodel);
    emit(EditprofilefauilerGetimagesucess());
  }

  Future<void> getimagecover() async {
    final ImagePicker imagecoverp = ImagePicker();
    imagecover =
        await imagecoverp.pickImage(source: ImageSource.camera) as XFile;
    imagecovermodel = File(imagecover!.path);
    emit(EditprofilefauilerGetimagesucess());
  }

  void changeNameandbio({required String name, required String bio}) {
    namemodel = name;
    biomodel = bio;
    upddate();
  }

  Future<void> uploadingimagecovermodel() async {
    await firebaseStorage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(imagecover!.path).pathSegments.last}')
        .putFile(File(imagecover!.path))
        .then((p0) {
      p0.ref.getDownloadURL().then((value) {
        //print(value);
        imagevaluec = value;
        emit(EditprofilesuccessGetimage());
      });
      print('object');
    }).catchError((onError) {
      print('object');
    });
  }

  Future<void> uploadingimageprofilemodel() async {
    await firebaseStorage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(imagprofile!.path).pathSegments.last}')
        .putFile(File(imagprofile!.path))
        .then((p0) {
      p0.ref.getDownloadURL().then((value) {
        imagevaluep = value;
        emit(EditprofilesuccessGetimage());
      });
      print('object');
    }).catchError((onError) {
      print('object');
    });
  }

  Future upddate({String? name, String? bio}) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc('${modeluser!.email}')
        .update({
          'birthData': modeluser!.birthDtae,
          'email': modeluser!.email,
          'password': modeluser!.password,
          'nationality': modeluser!.nationality,
          'phone': modeluser!.phone,
          'name': name == null ? modeluser!.name : name,
          'uid': modeluser!.uid,
          'bio': bio == null ? modeluser!.bio : bio,
          'imagecover':
              imagevaluec == null ? modeluser!.imagecover : imagevaluec,
          'imageprofile':
              imagevaluep == null ? modeluser!.imageprofile : imagevaluep
        })
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }

  Future<void> getmodeluser() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(modeluser!.email)
        .get()
        .then((value) {
      modeluser = modelPerson.fromJson(value.data());
    });
    emit(EditprofileInitial());
  }
}
