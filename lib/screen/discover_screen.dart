import 'package:flutter/material.dart';
class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15,right: 15,top: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                const Text('Discover',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(height: 22,),
                const Text("WHAT'S NEW TODAY",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 22,),

            Container(
                  height: 250,

                    child: Image.asset('assets/images/profile2.png',width: double.infinity,fit: BoxFit.cover,)),
            SizedBox(height: 22,),

            ListTile(
              dense:true,
              contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile2.png'),
              ),
              title: Text('Zulfiqar Ali',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
              subtitle: Text('zulfibscs@gmail.com'),
            ),
            SizedBox(height: 22,),
            Text('Browse all',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 22,),
            Container(
              height: 457,

              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, // Number of columns in the grid
                  mainAxisSpacing: 7.0, // Spacing between rows
                  crossAxisSpacing: 7.0, // Spacing between columns
                ),
                itemCount: 122, // Number of items in the grid

                itemBuilder: (BuildContext context, int index) {
                  return Image.asset('assets/images/profile2.png',fit: BoxFit.cover,);
                },
              ),
            )

          ],),
      ),
    );
  }
}
