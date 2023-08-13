import 'package:figma_basic/screen/chat_screen.dart';
import 'package:flutter/material.dart';
class ChatListTile extends StatelessWidget {
  String title;
  String subtitle;
  String imgUrl;
   ChatListTile({super.key,required this.title,required this.subtitle,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
      },

        leading: CircleAvatar(
          backgroundImage: AssetImage(imgUrl),
        ),
        title: Text(title,style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
        subtitle:Text(subtitle) ,
    );

  }
}
