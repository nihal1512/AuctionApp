import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {

  String? title;
  String? price;


  CustomCardWidget({
    Key? key,
   
  }) : super(key: key);

  get onTap => null;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(left: 10,),
      height: 155,
      width: 147,
      decoration: BoxDecoration(
        color: Colors.white,
       
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: (){},
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 14,),
            Container(
              child: Image.asset(
                'assets/image/plate.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 70,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,bottom: 5),
              child: Text(
                textAlign: TextAlign.center,
                "JOR15969",
                style: TextStyle(
                  fontFamily: 'Roboto Slab',
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Text('JOD 100', style: TextStyle(
              fontFamily: 'Roboto Slab',
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w700
            ),)
          ],
        ),
      ),
    );
  }
}