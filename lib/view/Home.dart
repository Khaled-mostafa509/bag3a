import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secla/categories/Leather.dart';
import 'package:secla/modle/Cards.dart';
import 'package:secla/modle/drawer.dart';
import 'package:secla/view/LogIn.dart';
import 'package:secla/modle/appbar.dart';
import 'package:secla/modle/search.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;

    return SafeArea(child: Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        actions: [
          IconButton( alignment:Alignment.topLeft ,onPressed: (){}, icon: Icon(Icons.search), )
          
        ],
        backgroundColor: Color.fromRGBO(71, 9, 56, 1),
        centerTitle: true,
        title: Text('Home',style: TextStyle(color: Colors.white,fontSize: 30),),
        
      ),
      bottomNavigationBar: BottomAppBar(
        
        
        
      
        child:Row( 
          children: [
          
          IconButton( onPressed: (){}, icon: Icon(Icons.home,size: 30,)), 
          Spacer(),
          
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,size: 30,)),

        ],) 
        
        
      ),
      floatingActionButton:
      FloatingActionButton(child: Icon(Icons.add), onPressed: () {},
      backgroundColor:(Color.fromRGBO(71, 9, 56, 1)),),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "category1",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color:Color.fromRGBO(71, 9, 56, 1),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 20
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: size.width,
                height: 250,
                child: ListView(
                  children: [
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    SeeMore(color2: Color.fromRGBO(71, 9, 56, 1),
                        Return: Leather(),
                        color3:  Color.fromRGBO(242, 214, 235, 1))
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "category2",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color:Color.fromRGBO(71, 9, 56, 1),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 20
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: size.width,
                height: 250,
                child: ListView(
                  children: [
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    SeeMore(color2: Color.fromRGBO(71, 9, 56, 1),
                        Return: LogIn(),
                        color3:  Color.fromRGBO(242, 214, 235, 1))
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "category3",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color:Color.fromRGBO(71, 9, 56, 1),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 20
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: size.width,
                height: 250,
                child: ListView(
                  children: [
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    Cards(
                        image: 'Images/Hydro.PNG',
                        color1:  Color.fromRGBO(242, 214, 235, 1),
                        color: Color.fromRGBO(71, 9, 56, 1),
                        Name: "Multifunctional Hydro Oxygen Machine",
                        Descreption: "Descreption",
                        Price: "Price"),
                    SizedBox(width: 20,),
                    SeeMore(color2: Color.fromRGBO(71, 9, 56, 1),
                        Return: LogIn(),
                        color3:  Color.fromRGBO(242, 214, 235, 1))
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ),

            ],
          ),
        ),
      ),
    ));
  }
}
