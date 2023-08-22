import 'package:dream_social_app/constant.dart';
import 'package:dream_social_app/cubits/editProfile/editprofile_cubit.dart';
import 'package:dream_social_app/screens/addpost/addpostscreen.dart';
import 'package:dream_social_app/screens/profile/Editprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditprofileCubit, EditprofileState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        BlocProvider.of<EditprofileCubit>(context).getmodeluser();
        return Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                        image: NetworkImage(modeluser!.imagecover)),
                    Positioned(
                      bottom: -50,
                      right: 10,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 72,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 68,
                              backgroundImage:
                                  NetworkImage('${modeluser?.imageprofile}'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    modeluser!.name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 20, bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      print('sad');
                    },
                    child: Opacity(
                      opacity: 0.7,
                      child: Text(
                        modeluser!.bio,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return editprofile();
                      }));
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                                child: Text(
                              'تعديل الملف الشخصي',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(child: Icon(Icons.more_horiz)),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 2,
                  height: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'التفاصيل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Zawyat Razin Al minufiyah , Egypt',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Icon(Icons.place),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'يدرس ف كليه الحاسبات والذكاء الاصطناعي',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Icon(FontAwesomeIcons.userGraduate),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '02104116925',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Icon(FontAwesomeIcons.whatsapp),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'abdelghfarkhirallah',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Icon(FontAwesomeIcons.linkedin),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'abdelghfar Salah',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Icon(FontAwesomeIcons.github),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'المنشورات',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.fileImage,
                            color: Colors.green,
                          )),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => addpost()));
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              //border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20, top: 12),
                            child: Text('What are you thinking?'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => profile()));
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              NetworkImage('${modeluser?.imageprofile}'),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 11,
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
