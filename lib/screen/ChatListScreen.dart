import 'package:figma_basic/screen/widgets/Chat_list_tile.dart';
import 'package:flutter/material.dart';
class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Chats'),
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 25),
        centerTitle:true ,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_rounded,color: Colors.black,)),
        elevation: 1,

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Column(

            children:  [
              ChatListTile(title: 'James', subtitle: "I am looking tips that caputes..",imgUrl: 'assets/images/Rectangle 2.1.png'),
              Divider(height: 2,),
              ChatListTile(title: 'Zulfi', subtitle: "Hy , Zulfi That's was very helpful",imgUrl: 'assets/images/profile1.png',),
              Divider(height: 2),
              ChatListTile(title: 'Kavi', subtitle: "see on your message..",imgUrl: 'assets/images/Rectangle 2.2.png'),
              Divider(height: 2),
              ChatListTile(title: 'Bahm', subtitle: "I am comming to school..",imgUrl: 'assets/images/Rectangle 2.3.png'),
              Divider(height: 2),
              ChatListTile(title: 'James', subtitle: "see on every thing is okey..",imgUrl: 'assets/images/Rectangle 2.4.png'),
              Divider(height: 2),
              ChatListTile(title: 'Rhe', subtitle: "Islamabad is Capital of Pakistan..",imgUrl: 'assets/images/Rectangle 2.5.png'),
              Divider(height: 2),
              ChatListTile(title: 'Ako', subtitle: "oky am wellcome..",imgUrl: 'assets/images/Rectangle 2.6.png'),
              Divider(height: 2),
              ChatListTile(title: 'Jay', subtitle: "Lion is live in forest..",imgUrl: 'assets/images/Rectangle 2.7.png'),
              Divider(height: 2),
              ChatListTile(title: 'Rami', subtitle: "and its king of forest..",imgUrl: 'assets/images/Rectangle 2.8.png'),
              Divider(height: 2),
              ChatListTile(title: 'Basi', subtitle: "I am looking tips that caputes..",imgUrl: 'assets/images/Rectangle 2.9.png'),
              Divider(height: 2),
              ChatListTile(title: 'Shena', subtitle: "He flew and fly here and there..",imgUrl: 'assets/images/Rectangle 2.10.png'),
              Divider(height: 2),
              ChatListTile(title: 'Beem', subtitle: "I am looking tips that caputes..",imgUrl: 'assets/images/Rectangle 2.11.png'),
              Divider(height: 2),
              ChatListTile(title: 'Rao', subtitle: "I am looking tips that caputes..",imgUrl: 'assets/images/Rectangle 2.1.png'),
              Divider(height: 2),
              ChatListTile(title: 'Hali', subtitle: "I am looking tips that caputes..",imgUrl: 'assets/images/Rectangle 2.2.png'),
              Divider(height: 2),
            ],
          ),
        ),
      ),

    );
  }
}
