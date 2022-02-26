import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final image;
  final Color color;
  final Color color1;
  final String Name;
  final String Descreption;
  final String Price;

  const Cards({Key? key,
    required this.image,
    required this.color,
    required this.color1,
    required this.Name,
    required this.Descreption,
    required this.Price}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;

    return Container(
        width: 280,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(image)
                  ),),),
              SizedBox(height: 20,),
              Text(
                Name,
                style: TextStyle(
                    color: color1,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
    );
  }
}

class SeeMore extends StatelessWidget {
  final Color color2;
  final Color color3;
  final Return;
  const SeeMore({Key? key, required this.color2, required this.Return, required this.color3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: color2,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Return));
        },
        child: Text("See More", style: TextStyle(color:color3,fontSize: 30),),
      ),
    );
  }
}

