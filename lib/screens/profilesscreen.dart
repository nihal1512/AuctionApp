import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/widget/bottomnavbar.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
       
      bottomNavigationBar: CustomBottomNavigationBar(),
        key: _scaffoldKey,
        backgroundColor: Color(0xff181816),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                children: [
                  Flexible(
                    child: Image.asset(
                      'assets/image/logo.png',
                      fit: BoxFit.contain,
                      height: 32,
                    ),
                  ),
                ],
              ),
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            width: 120,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            child: Icon(
              Icons.person,
              size: 80,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "User",
                style: TextStyle(
                    fontFamily: "Roboto Slab",
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                        margin: EdgeInsets.all(5),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff2C2C2A),
                  ),
                  child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Dashboard",
                            style: TextStyle(
                              fontFamily: 'Word Sans',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ))),
                      Container(
                        margin: EdgeInsets.all(5),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff2C2C2A),
                  ),
                  child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                           FaIcon(FontAwesomeIcons.basketShopping,color: Colors.white,size: 15,), 
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Order",
                            style: TextStyle(
                              fontFamily: 'Word Sans',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ))),
                      Container(
                        margin: EdgeInsets.all(5),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff2C2C2A),
                  ),
                  child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                           FaIcon(FontAwesomeIcons.home,color: Colors.white,size: 15,), 
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Addresses",
                            style: TextStyle(
                              fontFamily: 'Word Sans',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ))),
                       Container(
                        margin: EdgeInsets.all(5),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff2C2C2A),
                  ),
                  child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                           Icon(Icons.person,color: Colors.white,size: 20,), 
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Account Details",
                            style: TextStyle(
                              fontFamily: 'Word Sans',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ))), Container(
                        margin: EdgeInsets.all(5),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff2C2C2A),
                  ),
                  child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                           Icon(Icons.logout,color: Colors.white,size: 20,), 
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Log Out",
                            style: TextStyle(
                              fontFamily: 'Word Sans',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ))),
            ],
          )
        ]));
  }
}
