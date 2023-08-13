import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BrowseAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      MasonryGridView.count(
        scrollDirection: Axis.vertical,
        itemCount: 20,
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          return  Image.asset('assets/images/Rectangle 2 (1).png');
        },
      )


    );
  }
}
