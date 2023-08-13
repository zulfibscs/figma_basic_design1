import 'package:figma_basic/screen/profile_screen.dart';
import 'package:figma_basic/screen/search_screen.dart';
import 'package:flutter/material.dart';

import 'browse_all_screen.dart';
import 'ChatListScreen.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex=0;
  void _nevigateBottomNaveBar(index){
    setState(() {
      _selectedIndex=index;
      print('object');
    });
  }
  final List<Widget> _children=[
    BrowseAll(),
    SearchScreen(),

    Profile(),
    ChatListScreen(),
    Profile(),


  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        type: BottomNavigationBarType.shifting,
        showUnselectedLabels: false,
        onTap: _nevigateBottomNaveBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,

        selectedFontSize: 22,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Home.png',fit: BoxFit.cover,),
            label: 'home'
          ),
          BottomNavigationBarItem(
              icon:Image.asset('assets/images/Search.png',fit: BoxFit.cover,),
              label: ''

          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Upload.png',fit: BoxFit.cover,),
              label: ''

          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Chats.png',fit: BoxFit.cover,),
              label: ''

          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Profile.png',fit: BoxFit.cover,),
              label: ''

          ),
        ],

      ),
    );
  }
}
