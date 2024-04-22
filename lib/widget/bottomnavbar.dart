import 'package:flutter/material.dart';
import 'package:project/screens/about.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/licenseplate.dart';
import 'package:project/screens/mobilenumber.dart';
import 'package:project/screens/profilesscreen.dart';

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
                onPressed: (){Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        LicencePlate())));},
                icon: Icon(Icons.search, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        MobileNumber())));
                },
                icon: Icon(Icons.favorite, color: Colors.white),
              ),
              SizedBox( // This sized box is just a spacer
                width: 66.0,
                height: 66.0,
              ),
              IconButton(
                onPressed: (){
                  Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        AboutScreen())));
                },
                icon: Icon(Icons.notifications, color: Colors.white),
              ),
              IconButton(
                onPressed: (){
                  Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        ProfileScreen())));
                },
                icon: Icon(Icons.settings, color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 12.0,
          child: InkWell(
            onTap: (){
              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        HomePage())));
            },
            child: SizedBox(
              width: 66.0,
              height: 66.0,
              child: FloatingActionButton(
                onPressed: (){Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        HomePage())));},
                child: Icon(Icons.home, color: Colors.white),
                backgroundColor: Color(0xff4D4D4D),
                shape: CircleBorder(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
