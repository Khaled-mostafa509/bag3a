import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secla/modle/TextFeild1.dart';
import 'package:secla/modle/Buttoms.dart';
import 'Home.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
class Register extends StatefulWidget {

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController FName=TextEditingController();
  TextEditingController LName=TextEditingController();
  TextEditingController Phone=TextEditingController();

  var Type2;
  String error='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(child:Text('Profile',
                style: TextStyle(
                    color: Color.fromRGBO(71, 9, 56, 1),
                    fontSize: 70,
                    fontWeight: FontWeight.bold),
                textAlign:TextAlign.start,) 
                ), 
                
              SizedBox(height: 30,),
            
              Column(
                children: [
                  // ProfilePicture(name: 'Dees', radius: 31,fontsize: 21, ), 
              
                  
                  TextFeild(
                    HintText: "First Name",
                    LableText: "First Name",
                    type: TextInputType.text,
                    W: 300,
                    C: FName,

                  ),
                  SizedBox(height: 20,),
                  TextFeild(
                      HintText: "Last Name",
                      LableText: "Last Name",
                      type: TextInputType.text,
                      W: 300,
                      C: LName),
              
                ],
              
              ),
              Wrap(
                alignment: WrapAlignment.start,
                spacing: 50,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                        value: 1,
                        groupValue: Type2,
                        onChanged: (value){setState(() {Type2=value;});},
                        activeColor: Color.fromRGBO(71, 9, 56, 1),),
                      Text("Company"),
                    ],
                  ),

                

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                        value: 2,
                        groupValue: Type2,
                        onChanged: (value){setState(() {Type2=value;});},
                        activeColor: Color.fromRGBO(71, 9, 56, 1),),
                      Text("User"),

                    ],
                  ),

                ],
              ),
              
              TextFeild(HintText: "Enter Your Phone",
                  LableText: "Phone Number",
                  type: TextInputType.phone,
                  W: 300,
                  C: Phone),
              SizedBox(height: 20,),
              
              Center(child: InkWell(
                onTap: ()  {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> Home())));;
                  
                  
                  },
              
                
                  child: Buttoms(
                    text: 'Sign up',
                    color: Color.fromRGBO(71, 9, 56, 1),
                    TextColor:  Color.fromRGBO(242, 214, 235, 1),
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
