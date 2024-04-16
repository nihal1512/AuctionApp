import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 60.0,
          color: Color(0xff181816),
          width: double.infinity,
          // Match the width of the screen
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => print('Icon 1 pressed'),
                icon: Icon(Icons.search, color: Colors.white),
              ),
              IconButton(
                onPressed: () => print('Icon 2 pressed'),
                icon: Icon(Icons.favorite, color: Colors.white),
              ),
              SizedBox( // This sized box is just a spacer
                width: 66.0,
                height: 66.0,
              ),
              IconButton(
                onPressed: () => print('Icon 4 pressed'),
                icon: Icon(Icons.notifications, color: Colors.white),
              ),
              IconButton(
                onPressed: () => print('Icon 5 pressed'),
                icon: Icon(Icons.settings, color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 12.0,
          child: SizedBox(
            width: 66.0,
            height: 66.0,
            child: FloatingActionButton(
              onPressed: () => print('Home pressed'),
              child: Icon(Icons.home, color: Colors.white),
              backgroundColor: Color(0xff4D4D4D),
              shape: CircleBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
