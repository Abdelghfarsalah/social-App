import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class itempost extends StatelessWidget {
  const itempost({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      child: Column(
        children: [
          Row(
            children:  [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                      'lib/assets/fonts/6454d556a5c53cb7d4fe86c9_anime.webp'),
                ),
              ),
            const  SizedBox(
                width: 10,
              ),
            const  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Abdelghfar S Khirallah',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.check_circle_rounded,
                        color: Colors.blue,
                        size: 18,
                      )
                    ],
                  ),
                  Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Abdelghfar S Khirallah',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w900),
                      ))
                ],
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
          const Divider(
            thickness: 2,
            height: 2,
            indent: 10,
            endIndent: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem g and typeseteap intting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
              style: TextStyle(
                  fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
              maxLines: 12,
            ),
          ),
        const  SizedBox(
            height: 20,
          ),
        const Padding(
          padding:  EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child:   Text('#Software   #Flutter',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18
              ),
              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration:const  BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: 
              AssetImage(
                
                'lib/assets/fonts/6454d556a5c53cb7d4fe86c9_anime.webp'))
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){},
                  child:const Row(
                    children: [
                      Icon(FontAwesomeIcons.heart,color: Colors.red,),
                      SizedBox(width: 10,),
                      Text('120'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){},
                  child:const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(FontAwesomeIcons.comments,color: Colors.yellow,),
                      SizedBox(width: 10,),
                      Text('120 comments'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const Divider(
            thickness: 2,
            height: 2,
            indent: 10,
            endIndent: 10,
          ),
           Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                      'lib/assets/fonts/6454d556a5c53cb7d4fe86c9_anime.webp'),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Text('Write a comment...'),
              ),
            const  Spacer(),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.heart,color: Colors.red,))
                        ,
                        Text('Like'),
                      ],
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
