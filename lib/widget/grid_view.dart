import 'package:flutter/material.dart';
import 'package:project/widget/cardWidget.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181816),
     
      body: GridView.count(
        crossAxisCount: 2, // Number of cards per row
        children: List.generate(10, (index) {
          // Generate 10 Card widgets
          return Container(
            margin: EdgeInsets.all(10),
            child: CustomCardWidget());
        }),
      ),
    );
  }
}
