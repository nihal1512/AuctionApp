import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FractionallySizedBox(
      
    widthFactor: 0.6, // 60% of the screen width
    child: Drawer(
      
      shadowColor:Color(0xffffffff) ,
        width: 245,
        backgroundColor: Color(0xff121212),
        child: Column(
          children: [])));
  }

}