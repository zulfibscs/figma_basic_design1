import 'package:figma_basic/screen/login_screen.dart';
import 'package:figma_basic/screen/register_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
        return  Scaffold(
            body: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Stack(
          children:[
                  Image.asset('assets/images/Rectangle.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover,
                  ),
                  Center(
                    child: Image.asset('assets/images/logo.png',fit:BoxFit.contain,width: 152,),
                  ),
                   Positioned(
                      bottom: 30,
                      left: 10,
                      child:Row(
                        children: [

                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/profile1.png'),
                            radius: 18,
                          ),
                          SizedBox(width: 12,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Zulfiqar Ali',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('zulfibscs@gmail.com',),
                            ],
                          )
                        ],
                      ),

                  )
          ],
        ),
                ),
                Expanded(
                  flex: 1,
                    child: Container(
                  height: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 8,),

                      Expanded(
                        child: OutlinedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                          },
                          child: Text('Login',style: TextStyle(color: Colors.black),),
                          style: OutlinedButton.styleFrom(
                              side:  BorderSide(width: 1,
                              )
                          ),),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                          },
                          child: Text('Register'),
                          style:ElevatedButton.styleFrom(
                              backgroundColor:Colors.black,
                              padding: EdgeInsets.all(10),
                              textStyle: TextStyle(fontWeight: FontWeight.bold)
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),


                    ],
                  )
                ))
              ],
            )
    );
  }
}
