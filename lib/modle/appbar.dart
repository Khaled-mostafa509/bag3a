import 'package:flutter/material.dart';

class appBar extends StatefulWidget {
  const appBar({ Key? key }) : super(key: key);

  @override
  _appBarState createState() => _appBarState();
}

class _appBarState extends State<appBar> {

  @override
  Widget build(BuildContext context) {
    final appSize = MediaQuery.of(context).size;
    final height = 60.0;
    return Container(
      width: appSize.width,
      height: height,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            width: appSize.width,
            height: height-1,
            child: Icon(Icons.home)),
          

        ],
      ),
      
      
      

      
    );
  }
}