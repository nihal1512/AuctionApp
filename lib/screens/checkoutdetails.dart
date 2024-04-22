import 'package:flutter/material.dart';
import 'package:project/theme/theme_helper.dart';
import 'package:project/utils/size_utils.dart';
import 'package:project/widget/custom_text_field.dart';

class checkoutdetailpg extends StatefulWidget {
  const checkoutdetailpg({super.key});

  @override
  State<checkoutdetailpg> createState() => _checkoutdetailpgState();
}

class _checkoutdetailpgState extends State<checkoutdetailpg> {
  bool _rememberMe = false;
  TextEditingController _FirstNameController = TextEditingController();
   TextEditingController _LastNameController = TextEditingController();
  TextEditingController _TownController = TextEditingController();
   TextEditingController _PhoneController = TextEditingController();
  TextEditingController _EmailController = TextEditingController();
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
            'BILLING DETAILS',
            style: TextStyle(
                fontFamily: "Roboto Sans",
                fontSize: 24,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(margin: EdgeInsets.only(left: 20),
            child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'First Name*',
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                          SizedBox(height: 10.v),
                                          Container(width: screenWidth*.4,
                                            child: CustomTextFormField(
                                                controller:
                                                    _LastNameController,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType: TextInputType.text,
                                                // prefix: Container(
                                                //     margin: EdgeInsets.fromLTRB(
                                                //         20.h, 16.v, 21.h, 15.v),
                                                //     child: ),
                                                prefixConstraints: BoxConstraints(
                                                    maxHeight: 53.v)),
                                          ),
                                        ],
                                      ),
          ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Last Name*',
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                          SizedBox(height: 10.v),
                                          Container(width: screenWidth*.4,
                                            child: CustomTextFormField(
                                                controller:
                                                    _FirstNameController,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType: TextInputType.text,
                                                // prefix: Container(
                                                //     margin: EdgeInsets.fromLTRB(
                                                //         20.h, 16.v, 21.h, 15.v),
                                                //     child: ),
                                                prefixConstraints: BoxConstraints(
                                                    maxHeight: 53.v)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ]),
                                     Container(
             margin: EdgeInsets.only(left: 20,right: 20,top: 20,),
            child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Town/City*',
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                          SizedBox(height: 10.v),
                                          CustomTextFormField(
                                              controller:
                                                  _TownController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType: TextInputType.text,
                                              // prefix: Container(
                                              //     margin: EdgeInsets.fromLTRB(
                                              //         20.h, 16.v, 21.h, 15.v),
                                              //     child: ),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight: 53.v)),
                                        ],
                                      ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 20,),
            child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Phone*',
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                          SizedBox(height: 10.v),
                                          CustomTextFormField(
                                              controller:
                                                  _PhoneController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType: TextInputType.text,
                                              // prefix: Container(
                                              //     margin: EdgeInsets.fromLTRB(
                                              //         20.h, 16.v, 21.h, 15.v),
                                              //     child: ),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight: 53.v)),
                                        ],
                                      ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Email*',
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                          SizedBox(height: 10.v),
                                          CustomTextFormField(
                                              controller:
                                                  _EmailController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType: TextInputType.text,
                                              // prefix: Container(
                                              //     margin: EdgeInsets.fromLTRB(
                                              //         20.h, 16.v, 21.h, 15.v),
                                              //     child: ),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight: 53.v)),
                                        ],
                                      ),
          ),
        Container(
          margin: EdgeInsets.only(top: screenHeight*.3),
            child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: ((context) => checkoutdetailpg())));
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
                      "Place Order",
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
