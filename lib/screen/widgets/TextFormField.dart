import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
  String hintText;
   CustomTextFormField({super.key,required this.hintText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
          decoration: InputDecoration(
          hintText: hintText,

          border: OutlineInputBorder(
              borderSide: BorderSide(width:3,color: Colors.black,style: BorderStyle.solid,)

          ),

      ),
    );
  }
}
