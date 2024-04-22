import 'package:flutter/material.dart';
import 'package:project/screens/itemdetail.dart';

class CustomCardWidget extends StatelessWidget {
  final String? title;
  final String? price;

  CustomCardWidget({
    Key? key,
    this.title,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemDetail()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 10),
        height: 160,
        width: 147,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 14),
            Container(
              child: Image.asset(
                'assets/image/plate.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 45,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                "JOR15969",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto Slab',
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'JOD 100',
              style: TextStyle(
                fontFamily: 'Roboto Slab',
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),

            Container(
              width: 130,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff181816),),
              
              height: 30,
              child: Center(child: Text('Bid / Buy'),),
            )
          ],
        ),
      ),
    );
  }
}
