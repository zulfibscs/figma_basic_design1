import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex:  3,
            child: Padding(
              padding: const EdgeInsets.only(left: 22,right: 22,top: 10),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Search',style: TextStyle(
                      fontSize: 28
                  ),),
                  SizedBox(height: 12,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border:  OutlineInputBorder(
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Text('All Result',style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ]
    ),
            ),
          ),
          Expanded(
            flex: 8,
            child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: List.generate(200, (index) => Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("He'd have you all unravel at the"),
            ),)
            ),
          )
        ],
      )

    );
  }
}
