import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFeild extends StatelessWidget {
  final String HintText;
  final String LableText;
  final TextInputType type;
  final double W;
  final TextEditingController C;

  const TextFeild({Key? key,
    required this.HintText,
    required this.LableText,
    required this.type,
    required this.W,
    required this.C,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: W,
      height: 70,
      decoration: BoxDecoration(
          color: Color.fromRGBO(242, 214, 235, 1),
          borderRadius: BorderRadius.circular(15)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextField(
          style: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(71, 9, 56, 1),),
          decoration: InputDecoration(
            hintText: HintText,
            labelText: LableText,
          ),
          controller: C,
          keyboardType: type,
        ),
      ),
    );
  }
}

class TextFeild1 extends StatefulWidget {

  final String HintText;
  final String LableText;
  final TextInputType type;
  final double W;
  final TextEditingController C;

  const TextFeild1({Key? key,
    required this.HintText,
    required this.LableText,
    required this.type,
    required this.W,
    required this.C,
  }) : super(key: key);

  @override
  _TextFeild1State createState() => _TextFeild1State();

}

class _TextFeild1State extends State<TextFeild1> {
  bool secure=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: widget.W,
      height: 80,
      decoration: BoxDecoration(
          color: Color.fromRGBO(242, 214, 235, 1),
          borderRadius: BorderRadius.circular(15)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextField(
          style: TextStyle(fontSize: 15,
              color: Color.fromRGBO(71, 9, 56, 1)),
          decoration: InputDecoration(
            hintText: widget.HintText,
            labelText: widget.LableText,
            suffix: GestureDetector(onTap: (){setState(() {
              secure =!secure;
            });},
              child: Icon(secure? Icons.visibility : Icons.visibility_off),),
          ),
          controller: widget.C,
          obscureText: secure,
          keyboardType: widget.type,
        ),
      ),
    );
  }
}




