import 'package:flutter/material.dart';
import 'package:project/screens/bidingpg.dart';
import 'package:project/screens/mobilenumber.dart';
import 'package:project/widget/cardWidget.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({super.key});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
      body:ListView(
        children: [
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
          
          Container(
                        margin: EdgeInsets.all(10),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffffffff),
                  ),
                  child: Image.asset("assets/image/platedetail.png")
                  ),
                  Container(
                    margin: EdgeInsets.only(left:20,top: 10),
                    child: Text("42-9829",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 26,
                        fontWeight: FontWeight.w500
                    
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:20,top: 10),
                    child: Text("JOD 849",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    
                    ),),
                  ),
                  Center(
                    
                    child: Text("Pay a deposit of JOD 250 per item",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                    
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:20,top: 10),
                    child: Text("Starting Price:",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                    
                    ),),
                  ),
                  Container(child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10),
                       width: screenWidth * 0.42,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  
                  ),
                  child: Center(
                    child: Text("JOD 800",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,color: Colors.black
                      
                      ),),
                  ),
                    ),
                    InkWell(
                      onTap: (){
                         Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        BiddingPage())));
                      },
                      child: Container(margin: EdgeInsets.only(right: 20,top: 10),
                         width: screenWidth * 0.42,
                                        height: screenHeight * 0.06,
                                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                       border: Border.all(width: 2,color: Colors.white,),
                                        ),
                                        child: Center(
                      child: Text("Place Your Bid",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        
                        ),),
                                        ),
                      ),
                    )
                  ],),),
                  Center(
                    child: InkWell(
                      onTap: (){},
                      child: Container(margin: EdgeInsets.only(right: 20,top: 20),
                           width: screenWidth * 0.87,
                      height: screenHeight * 0.06,
                                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                                      color: Colors.white,
                      ),
                      child: Center(
                        child: Text("Buy At JOD 849 ",
                          style: TextStyle(
                              fontFamily: "Work Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          
                          ),),
                      ),
                        ),
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.only(left:20,top: 10),
                    child: Text("CATEGORY: LICENSE PLATE",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                    
                    ),),
                  ),
                  SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(margin: EdgeInsets.only(left: 20),
                    child: Text('Related Product', style: TextStyle(fontFamily: 'Roboto Slab',
                                color: Colors.white,
                                fontSize: 20,
                                 fontWeight: FontWeight.w600,
                              ),),
                  ),
                  InkWell(
                    onTap:(){
                          Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        MobileNumber())));
                    },
                    child:
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
                  ),)

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
      ) ,
    );
  }
}