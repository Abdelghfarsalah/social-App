import 'package:dream_social_app/constant.dart';
import 'package:dream_social_app/screens/profile/personalInof.dart';
import 'package:dream_social_app/screens/profile/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class settingpage extends StatelessWidget {
  const settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: IconButton(
                      onPressed: () {},
                      icon: Center(
                          child: Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                        size: 30,
                      )))),
              const Spacer(),
              const Text(
                'القائمة',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      modeluser!.name,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    const Text(
                      'عرض ملفك الشخصي',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    modeluser!.imagecover,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'الاصدقاء',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.verified_user,
                  color: Colors.blue,
                  size: 40,
                )
              ]),
            ),
          ),
        ),
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'الفديو',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.video_call,
                  color: Colors.deepOrange,
                  size: 40,
                )
              ]),
            ),
          ),
        ),
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'المجموعات',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.group,
                  color: Colors.greenAccent,
                  size: 40,
                )
              ]),
            ),
          ),
        ),
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'الذكريات',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.memory,
                  color: Colors.lime,
                  size: 40,
                )
              ]),
            ),
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>personalInfo()));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                   'المعلومات الشخصيه',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        size: 40,
                      ))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
