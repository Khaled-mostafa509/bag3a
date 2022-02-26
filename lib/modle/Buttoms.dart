import 'package:flutter/material.dart';

class Buttoms extends StatelessWidget {
  final String text;
  final Color color;
  final Color TextColor;

  const Buttoms({Key? key, required this.text, required this.color, required this.TextColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 60,
      child: Center(child: Text(  text,style: TextStyle( color: TextColor,fontWeight: FontWeight.bold,fontSize: 30),)),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
