import 'package:flutter/material.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/licenseplate.dart';
import 'package:project/screens/mobilenumber.dart';
import 'package:project/screens/profilesscreen.dart';
import 'package:project/widget/bottomnavbar.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       
      bottomNavigationBar: CustomBottomNavigationBar(),
       key: _scaffoldKey,
      backgroundColor: Color(0xff181816),
        endDrawer: Drawer(
          backgroundColor:   Color(0xff181816),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
             SizedBox(height: 50,),
               ListTile(
                leading: Icon(Icons.home,color: Colors.grey,),
                title: Text('Home Page',style: TextStyle(color: Colors.white,fontSize: 16),),
                onTap: () {
                   Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        HomePage())));
                },
              ),
              ListTile(
                leading: Image.asset('assets/icon/licenceplate.png'),
                title: Text('Licence Plate',style: TextStyle(color: Colors.white,fontSize: 16),),
                onTap: () {
                   Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        LicencePlate())));
                },
              ),
              ListTile(
                leading: Image.asset('assets/icon/mobile.png'),
                title: Text('Mobile Number',style: TextStyle(color: Colors.white,fontSize: 16),),
                onTap: () {
                 Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        MobileNumber())));
                },
              ),
            
              ListTile(
                leading: Image.asset('assets/icon/about.png'),
                title: Text('About',style: TextStyle(color: Colors.white,fontSize: 16),),
                onTap: () {
                   Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        AboutScreen())));
                },
              ),
              ListTile(
                leading: Image.asset('assets/icon/profile.png'),
                title: Text('Profile',style: TextStyle(color: Colors.white,fontSize: 16),),
                onTap: () {
                   Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        ProfileScreen())));
                },
              ),
            ],
          ),
        ),
      body: ListView(
        children: [
           Padding(
               
            padding: const EdgeInsets.only(top:0,left: 0,right: 0),
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
                      icon: Icon(Icons.menu,color: Colors.white,),
                      onPressed: () {
                        _scaffoldKey.currentState?.openEndDrawer();
                      },
                    ),
                  ],
                ),
              ),
                 SizedBox(height: 10,), 
          Container(margin: EdgeInsets.all(10),
            child: Text("RAQAMAK IS AN INDEPENDENTLY OWNED ESTABLISHMENT THAT WAS FOUNDED IN JORDAN IN AUGUST 2020. WE ARE SPECIALIZED IN PREMIUM NUMBERS DEALERSHIP EITHER PREMIUM PLATE NUMBERS OR PREMIUM MOBILE NUMBERS"
            ,style: TextStyle(
              fontFamily: 'Roboto Slab',
              fontSize: 20,
              color: Colors.white
            ),
            ),
          ),
           Container(margin: EdgeInsets.all(10),
             child: Text("OUR MISSION IS TO REALIGN THE CONCEPT OF BUYING OR SELLING PREMIUM NUMBERS IN JORDAN, FROM DEALERS AND TRADITIONAL CONCEPT INTO MORE AUTHENTIC, PROFESSIONAL YET EASY PROCESS."
                       ,style: TextStyle(
              fontFamily: 'Roboto Slab',
              fontSize: 20,
              color: Colors.white
                       ),
                       
                       ),
           ),
           Container(margin: EdgeInsets.all(10),
             child: Text("Our vision based on our personal experience as dealers in many different segments in the market built the thrive in us to make investing dealership a better community for everyone.\nAn easy straight forward process starting from the call button to the congratulation hand shake point, we are building this platform gathering each and every PREMIUM number owner in one place with into details from our Driver and Vehicle licensing department in Jordan as well as for our main telecommunication companies to make every Selling and Buying process an easy and straight forward one.\nAt RAQAMAK, we continue to grow by the day. And we are always passionate to partner with top JORDANIAN after sale service providers. We look forward to hearing from you and building a mutually beneficial business partnership.\n"
                       ,style: TextStyle(
              fontFamily: 'Roboto Slab',
              fontSize: 14,
              color: Colors.white
                       ),
                       
                       ),
           )
        ],
      ),
    );
  }
}