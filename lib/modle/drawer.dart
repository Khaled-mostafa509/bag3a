import 'package:flutter/material.dart';
import 'package:secla/categories/Leather.dart';
import 'package:secla/view/LogIn.dart';
import '../main.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Container(
      height: size.height,
      width: size.width/1.5,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(80)
                  ),
                ),
              ),
            ),
            Center(child: Text("USER NAME", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
            Center(child: Text("USER EMAIL", style: TextStyle(decoration: TextDecoration.underline),)),
            Center(
              child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                  },
                  child: Text("Veiw Profile", style: TextStyle(color: Color.fromRGBO(71, 9, 56, 1),))),
            ),
            ExpansionTile(
              title: Text("CATEGORIES"),
              children: [
                ListTile(
                  title: Text("category 1",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 2",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 3",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 4",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 5",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 6",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 7",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 8",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 9",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 10",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 11",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 12",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 13",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 14",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
                ListTile(
                  title: Text("category 15",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                  },
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [

                Icon(Icons.shopping_cart,),
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                    },
                    child: Text("Shopped List", style: TextStyle(color: Colors.black,fontSize: 15),textAlign: TextAlign.end,)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Leather()));
                  },
                  child: Center(
                    child: Container(
                      width: 240,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(71, 9, 56, 1),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(child: Text("LOGOUT",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(242, 214, 235, 1)),)),
                    ),
                  )
              ),
            ),

          ],
        ),
      ),
    ) ;
  }
}
