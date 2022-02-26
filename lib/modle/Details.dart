import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String MachName;
  final String Desc;
  final String Price1;

  const Details({Key? key,  required this.MachName, required this.Desc, required this.Price1}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(71, 9, 56, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size.width,
              height: size.height/1.80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Name:",
                          style: TextStyle(
                              color: Color.fromRGBO(71, 9, 56, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),
                        )),
                    Text(MachName,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 15
                    ),
                    ),
                    SizedBox(height: 10,),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Description:",
                          style: TextStyle(
                              color: Color.fromRGBO(71, 9, 56, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),
                        )),
                    Text(
                        Desc,
                         style: TextStyle(
                           fontStyle: FontStyle.italic,
                           fontSize: 15
                         ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      children: [
                        Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(71, 9, 56, 1),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [BoxShadow(
                                blurRadius: 3,
                                offset: Offset(2,4),
                                color: Colors.grey
                              )],
                          ),
                          child: TextButton(
                            onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Order Now",style: TextStyle(color:Color.fromRGBO(242, 214, 235, 1),fontSize: 20),),
                                Icon(Icons.navigate_next,size: 35,color:Color.fromRGBO(242, 214, 235, 1),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 100,
                          height:60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(
                                blurRadius: 3,
                                offset: Offset(2,4),
                                color: Colors.grey
                            )],
                            color:Color.fromRGBO(71, 9, 56, 1),
                          ),
                          child: Center(child: Text(Price1,style: TextStyle(color:Color.fromRGBO(242, 214, 235, 1)),))
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
