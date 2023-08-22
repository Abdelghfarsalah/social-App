import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dream_social_app/cubits/editProfile/editprofile_cubit.dart';
import 'package:dream_social_app/screens/RegisterPage/widget/TextFormFiled.dart';
import 'package:dream_social_app/screens/RegisterPage/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dream_social_app/constant.dart';
import 'package:image_picker/image_picker.dart';

class editprofile extends StatelessWidget {
  editprofile({super.key});
  var changename = TextEditingController();
  var changebio = TextEditingController();
  String? bio;
  String? name;
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<EditprofileCubit>(context);
    return BlocConsumer<EditprofileCubit, EditprofileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                      image: cubit.imagecovermodel == null
                          ? NetworkImage(modeluser!.imagecover)
                          : FileImage(cubit.imagecovermodel) as ImageProvider,
                    ),
                    Positioned(
                        bottom: 200,
                        right: 360,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey.withOpacity(0.7),
                          child: IconButton(
                            onPressed: () {
                              cubit.getimagecover();
                            },
                            icon: const Icon(
                              FontAwesomeIcons.camera,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                        )),
                    Positioned(
                      bottom: -50,
                      right: 10,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 72,
                            backgroundColor: Colors.white,
                            child: GestureDetector(
                              onTap: () {
                                cubit.getimageprofile();
                              },
                              child: CircleAvatar(
                                radius: 68,
                                backgroundImage: cubit.imageprofilemodel == null
                                    ? NetworkImage(modeluser!.imageprofile)
                                    : FileImage(cubit.imageprofilemodel)
                                        as ImageProvider,
                              ),
                            ),
                          ),
                          Positioned(
                              child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey.withOpacity(0.2),
                            child: IconButton(
                              onPressed: () {
                                // BlocProvider.of<EditprofileCubit>(context)
                                //     .getimagecover();
                                // print('done');
                              },
                              icon: const Icon(
                                FontAwesomeIcons.camera,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextfiledF(
                    controller: changename,
                    password: false,
                    hint: 'enter to change name',
                    icon: IconButton(
                        onPressed: () {}, icon: Icon(FontAwesomeIcons.pencil)),
                    labal: 'Name',
                    onchange: (data) {
                      name = data;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextfiledF(
                    controller: changebio,
                    password: false,
                    hint: 'enter to change bio',
                    icon: IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.circleInfo)),
                    labal: 'Bio',
                    onchange: (data) {
                      bio = data;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextfiledF(
                    controller: changebio,
                    password: false,
                    hint: 'enter to change phone',
                    icon: IconButton(
                        onPressed: () {}, icon: Icon(FontAwesomeIcons.phone)),
                    labal: 'phone',
                    onchange: (data) {
                      bio = data;
                    },
                  ),
                ),
                button(
                  name: 'Updata',
                  ontap: ()async {
                  // await  cubit.uploadingimageprofilemodel();
                  // await  cubit.uploadingimagecovermodel();
                  await  cubit.upddate(name: name, bio: bio);
                  await  cubit.getmodeluser();
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
