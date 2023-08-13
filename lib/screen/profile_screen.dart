import 'package:figma_basic/screen/home_screen.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
   Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(left: 30,right: 30,top: 40,bottom: 0),
          child: Column(
            children:  [
              Center(
                child: CircleAvatar(
                  backgroundImage:AssetImage('assets/images/profile2.png',),
                  radius: 60,
                ),
              ),
              SizedBox(height: 22,),
              Text('Zulfi',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
              SizedBox(height: 22,),
              Text('Islamabad,Pakistan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
              SizedBox(height: 22,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Center(
                    child: Text('Follow Zulfi')),
                style:ElevatedButton.styleFrom(
                    backgroundColor:Colors.black,
                    padding: EdgeInsets.all(22),
                    textStyle: TextStyle(fontWeight: FontWeight.bold)
                ),
              ),
              SizedBox(height: 22,),
              OutlinedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
                  },
                  child: Center(child: Text('Message',style: TextStyle(color: Colors.black),)),
              style: OutlinedButton.styleFrom(
                side:  BorderSide(width: 1,
               )
              ),),
            Container(
              color: Colors.red,
              height: 3,
            )



            ],
          ),
        ),
      ),
    );
  }
}
