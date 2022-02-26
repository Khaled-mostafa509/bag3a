import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'Details.dart';

class Card2 extends StatelessWidget {
  final Photo;
  final String Name;
  final String Price;

  const Card2({Key? key,
    required this.Photo,
    required this.Name,
    required this.Price}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Container(
      width: size.width/2.15,
      height: 250,
      decoration: BoxDecoration(
          color:  Color.fromRGBO(71, 9, 56, 1),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width/2.10,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                 image: DecorationImage(
                   fit: BoxFit.fill,
                   image: AssetImage(Photo),
                 )
              ),
            ),
            Text(Name,textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Price,style: TextStyle(color: Colors.white)),
                TextButton(
                    onPressed: (){
                     Get.to(Details(
                         MachName: "Multifunctional Hydro Oxygen Machine",
                         Desc: "Water Jet Hydro Diamond Machine,Spa Facial Machine,Water Oxygen Skin Whitening Machine,Small Bubble Cleaning Beauty Instrument",
                       Price1: '10000000 L.E',));
                    },
                    child: Text("Details",style: TextStyle(color: Color.fromRGBO(242, 214, 235, 1)),))
              ],
            ),
          ],
        ),
      ),
    )
    ;}}