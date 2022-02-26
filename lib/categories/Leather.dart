import 'package:flutter/material.dart';
import 'package:secla/modle/drawer.dart';

import '../modle/Card2.dart';

class Leather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Leather",style: TextStyle(color: Colors.white,fontSize: 30)),
        backgroundColor: Color.fromRGBO(71, 9, 56, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                children: [
                  Card2(
                      Photo: "Images/Hydro.PNG",
                      Name: "Multifunctional Hydro Oxygen Machine",
                      Price: "1000"),
                  SizedBox(width: 10,),
                  Card2(
                      Photo: "Images/Hydro.PNG",
                      Name: "Multifunctional Hydro Oxygen Machine",
                      Price: "1000000"),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Card2(
                      Photo: "Images/Hydro.PNG",
                      Name: "Multifunctional Hydro Oxygen Machine",
                      Price: "1000"),
                  SizedBox(width: 10,),
                  Card2(
                      Photo: "Images/Hydro.PNG",
                      Name: "Multifunctional Hydro Oxygen Machine",
                      Price: "1000"),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Card2(
                      Photo: "Images/Hydro.PNG",
                      Name: "Multifunctional Hydro Oxygen Machine",
                      Price: "1000"),
                  SizedBox(width: 10,),
                  Card2(
                      Photo: "Images/Hydro.PNG",
                      Name: "Multifunctional Hydro Oxygen Machine",
                      Price: "1000"),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
