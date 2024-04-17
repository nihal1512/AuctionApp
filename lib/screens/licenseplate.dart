import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/widget/bottomsheet.dart';
import 'package:project/widget/grid_view.dart';

class LicencePlate extends StatefulWidget {
  const LicencePlate({super.key});

  @override
  State<LicencePlate> createState() => _LicencePlateState();
}

class _LicencePlateState extends State<LicencePlate> {
  
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'LICENCE PLATES', // Your heading text
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