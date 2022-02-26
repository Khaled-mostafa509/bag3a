import 'package:flutter/material.dart';

class Search extends StatefulWidget {

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: TextField(
        controller: search,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Color.fromRGBO(71, 9, 56, 1),
            ),
          ),
            prefixIcon: Icon(Icons.search, color: Color.fromRGBO(71, 9, 56, 1),),
            label: Text("Search",style: TextStyle(color:Color.fromRGBO(71, 9, 56, 1),fontWeight: FontWeight.bold),),
            hintText: "Search",
        ),
        onChanged: (v) {
          setState(() {});
        },
      ),
    );
  }
}

