import 'package:dream_social_app/screens/addpost/addpostscreen.dart';
import 'package:dream_social_app/screens/profile/profilescreen.dart';

import '../../../constant.dart';
import 'package:dream_social_app/screens/home/widgets/itempost.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class homescreenbody extends StatelessWidget {
  const homescreenbody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.facebookMessenger)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.magnifyingGlass)),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'InstaBook',
                    style: TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Colors.blue),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>addpost()));
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                      
                    },
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage:NetworkImage('${modeluser?.imageprofile}'),
                    ),
                  ),
                )
              ],
            ),
            itempost()
          ]),
        );
  }
}