import 'package:flutter/material.dart';
import 'package:project/screens/checkoutdetails.dart';
import 'package:project/theme/theme_helper.dart';
import 'package:project/utils/size_utils.dart';
import 'package:project/widget/custom_text_field.dart';

class checkoutbidpg extends StatefulWidget {
  const checkoutbidpg({super.key});

  @override
  State<checkoutbidpg> createState() => _checkoutbidpgState();
}

class _checkoutbidpgState extends State<checkoutbidpg> {
  bool _rememberMe = false;
  TextEditingController _CreditCardController = TextEditingController();
  TextEditingController _creditCVVNumberController = TextEditingController();
  bool _visibilityText = true;
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
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Your Order',
            style: TextStyle(
                fontFamily: "Roboto Sans",
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 20),
          width: screenWidth * 1,
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
              ),
              Container(
                width: screenWidth * .8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            '0795763000',
                            style: TextStyle(
                                fontFamily: "Roboto Sans",
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'JOD 300',
                            style: TextStyle(
                                fontFamily: "Roboto Sans",
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 0),
                      child: Text(
                        'QUANTITY: 1',
                        style: TextStyle(
                            fontFamily: "Roboto Sans",
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: screenWidth * .8,
          height: 1,
          color: Colors.grey,
          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 5,
              ),
              child: Text(
                'Starting Price',
                style: TextStyle(
                    fontFamily: "Roboto Sans",
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 5, right: 20),
              child: Text(
                'JOD 300',
                style: TextStyle(
                    fontFamily: "Roboto Sans",
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Text(
                'Bid Price',
                style: TextStyle(
                    fontFamily: "Roboto Sans",
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 20),
              child: Text(
                'JOD 285',
                style: TextStyle(
                    fontFamily: "Roboto Sans",
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Text(
                'Final Price',
                style: TextStyle(
                    fontFamily: "Roboto Sans",
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 20),
              child: Text(
                'JOD 285',
                style: TextStyle(
                    fontFamily: "Roboto Sans",
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        Container(
          width: screenWidth * .8,
          height: 1,
          color: Colors.grey,
          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
            child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: ((context) => checkoutbidpg())));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  width: screenWidth * 0.87,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: Colors.white)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Choose Payment Method",
                            style: TextStyle(
                              fontFamily: "Work Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 20,
                            )),
                      ]),
                ))),
                 SizedBox(height: 20.v),
                                    Container(
                                       margin: EdgeInsets.only(left:20),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Checkbox(
                                                  value: _rememberMe,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _rememberMe = value!;
                                                    });
                                                  },
                                                  fillColor: MaterialStateProperty
                                                      .resolveWith<Color?>(
                                                    (Set<MaterialState> states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .selected)) {
                                                        return Colors
                                                            .white; // Color of the checkbox when checked
                                                      }
                                                      return Colors.grey.withOpacity(
                                                          0.4); // Color of the checkbox when unchecked
                                                    },
                                                  ),
                                                  activeColor: Colors
                                                      .white, // Color of the checkbox when checked
                                                  checkColor: Colors.black,
                                                ),
                                                Text(
                                                  "I Have Read and Agree to the website Terms And Conditions*",
                                                   style: TextStyle(
                                                                    fontFamily: "Roboto Sans",
                                                                    fontSize: 11,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: Colors.white,
                                                                  
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )]),
                                    ),
        
        Center(
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => checkoutdetailpg())));
                },
                child: Container(  

                  margin: EdgeInsets.only(right: 20, top:10),
                  width: screenWidth * 0.86,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "Start Auction",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                )))
      ]),
    );
  }
}
