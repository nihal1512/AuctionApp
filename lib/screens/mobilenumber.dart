import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/screens/about.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/licenseplate.dart';
import 'package:project/screens/profilesscreen.dart';
import 'package:project/widget/bottomnavbar.dart';
import 'package:project/widget/grid_view.dart';
import 'package:project/widget/bottomsheet.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({super.key});

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
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
      body: 
        Column(children: [
         
               
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
                  
          Padding(
            padding: const EdgeInsets.only(top:36.0,left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mobile Number', // Your heading text
                  style: TextStyle(
                    fontFamily: "Roboto Slab",
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InkWell(
                  onTap: (){
                                showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return CustomBottomSheet(); // Your custom bottom sheet widget
              },
            );
                  },
                  child: Icon(Icons.filter_list_alt,color:Colors.white,size:20))
              ],
            ),
          ),
Expanded(
            child: MyGridView(), // Your GridView widget
          ),
        ],)
        
    );
  }
}