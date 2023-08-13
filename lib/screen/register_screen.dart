import 'package:figma_basic/screen/login_screen.dart';
import 'package:figma_basic/screen/widgets/TextFormField.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset('assets/images/arrow.png',color: Colors.black,),
            ),
            SizedBox(height: 40,),
            Text('Register',style: TextStyle(fontSize: 30),),
            SizedBox(height: 40,),
            CustomTextFormField(hintText: 'Email Adrees'),
            SizedBox(height: 10,),
            CustomTextFormField(hintText: 'Creat Password'),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Center(child: Text('Next')),style:ElevatedButton.styleFrom(
              backgroundColor:Colors.black,
              padding: EdgeInsets.all(22),
              textStyle: TextStyle(fontWeight: FontWeight.bold)
            ),)

          ],
        ),
      ),
    );
  }
}
