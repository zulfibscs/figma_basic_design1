import 'package:flutter/material.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zulfi'),
        titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        centerTitle:true ,
        leading:GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Image.asset('assets/images/Chevron.png',color: Colors.black,)) ,
        elevation: 1,

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              textColor: Colors.black,
              leading:  CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile2.png',),
              ),
              subtitle: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade200,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: Text("Really love your most recentlove your most recentlove your myour mo photo"))

            ),
            ),
            SizedBox(height: 15,),
            ListTile(
              textColor: Colors.orange.shade400,
              trailing:  CircleAvatar(
                backgroundImage: AssetImage('assets/images/Rectangle 2.2.png',),
              ),
              subtitle: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(

                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(9)
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Really love your most recentlove your most recentlove your myour mo photo"))
              ),
            ),
            ListTile(
              textColor: Colors.red,
              leading:  CircleAvatar(
                backgroundImage: AssetImage('assets/images/Rectangle 2.5.png',),
              ),
              subtitle: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade200,
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Really love your most recentlove your most recentlove your myour mo photo"))

              ),
            ),
            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
