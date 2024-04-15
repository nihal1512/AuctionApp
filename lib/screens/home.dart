import 'package:flutter/material.dart';
import 'package:project/widget/cardWidget.dart';
import 'package:project/widget/custom_drawer.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181816),
      key: _scaffoldKey,
      
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
      body: ListView(
        children: [
          Stack(
            children: [
              Container(height:365,
                color: Color(0xff4D4D4D),
                width: double.infinity,
               
                
                  child: 
                  Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:20,
                        bottom: 5,),
                        child: Text(
                          'Your Spot to buy or sell',
                          style: TextStyle(fontFamily: 'Roboto Slab',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:20,
                        bottom: 10,),
                        child: Text(
                          'Your Premium',
                          style: TextStyle(fontFamily: 'Roboto Slab',
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:20,
                        bottom: 10,),
                        child: Text(
                          'Number',
                          style: TextStyle(fontFamily: 'Roboto Slab',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            
              Positioned(
                top: 0,
                left: 0,
                right: 0,
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
            ],
          ),
          SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(margin: EdgeInsets.only(left: 20),
                    child: Text('Featured plate numbers', style: TextStyle(fontFamily: 'Roboto Slab',
                                color: Colors.white,
                                fontSize: 20,
                                 fontWeight: FontWeight.w600,
                              ),),
                  ),
                  Row(
                    children: [
                      Container(margin: EdgeInsets.only(right: 2),
                        child: Text('More', style: TextStyle(fontFamily: 'Roboto Slab',
                                    color: Colors.white,
                                    fontSize: 12,
                                     fontWeight: FontWeight.w400,
                                  ),),
                      ),
                       Container(margin: EdgeInsets.only(right: 20),
                        child: Icon(Icons.arrow_forward,color: Colors.white,size: 16,)
                      ),
                    ],
                  ),

              ],
            ),
           
               
                Container(margin: EdgeInsets.only(left: 20,top: 4),
                child: Text('Premium plate number ', style: TextStyle(fontFamily: 'Roboto Slab',
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 14,
                          ),),
              ),
               Container(
                margin: EdgeInsets.all(10),
      height: 155, // Set the height of the horizontal ListView
      child: ListView(
        
        scrollDirection: Axis.horizontal,
        // itemCount: 4, // Number of cards
       children: [
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),

       ],
      ),
    ),SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(margin: EdgeInsets.only(left: 20),
                    child: Text('Featured plate numbers', style: TextStyle(fontFamily: 'Roboto Slab',
                                color: Colors.white,
                                fontSize: 20,
                                 fontWeight: FontWeight.w600,
                              ),),
                  ),
                  Row(
                    children: [
                      Container(margin: EdgeInsets.only(right: 2),
                        child: Text('More', style: TextStyle(fontFamily: 'Roboto Slab',
                                    color: Colors.white,
                                    fontSize: 12,
                                     fontWeight: FontWeight.w400,
                                  ),),
                      ),
                       Container(margin: EdgeInsets.only(right: 20),
                        child: Icon(Icons.arrow_forward,color: Colors.white,size: 16,)
                      ),
                    ],
                  ),

              ],
            ),
           
               
                Container(margin: EdgeInsets.only(left: 20,top: 4),
                child: Text('Premium plate number ', style: TextStyle(fontFamily: 'Roboto Slab',
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 14,
                          ),),
              ),
               Container(
                margin: EdgeInsets.all(10),
      height: 155, // Set the height of the horizontal ListView
      child: ListView(
        
        scrollDirection: Axis.horizontal,
        // itemCount: 4, // Number of cards
       children: [
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),

       ],
      ),
    ),
    SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(margin: EdgeInsets.only(left: 20),
                    child: Text('Featured plate numbers', style: TextStyle(fontFamily: 'Roboto Slab',
                                color: Colors.white,
                                fontSize: 20,
                                 fontWeight: FontWeight.w600,
                              ),),
                  ),
                  Row(
                    children: [
                      Container(margin: EdgeInsets.only(right: 2),
                        child: Text('More', style: TextStyle(fontFamily: 'Roboto Slab',
                                    color: Colors.white,
                                    fontSize: 12,
                                     fontWeight: FontWeight.w400,
                                  ),),
                      ),
                       Container(margin: EdgeInsets.only(right: 20),
                        child: Icon(Icons.arrow_forward,color: Colors.white,size: 16,)
                      ),
                    ],
                  ),

              ],
            ),
           
               
                Container(margin: EdgeInsets.only(left: 20,top: 4),
                child: Text('Premium plate number ', style: TextStyle(fontFamily: 'Roboto Slab',
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 14,
                          ),),
              ),
               Container(
                margin: EdgeInsets.all(10),
      height: 155, // Set the height of the horizontal ListView
      child: ListView(
        
        scrollDirection: Axis.horizontal,
        // itemCount: 4, // Number of cards
       children: [
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),
        CustomCardWidget(),

       ],
      ),
    ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
