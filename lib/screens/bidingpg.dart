import 'package:flutter/material.dart';
import 'package:project/screens/checkoutbid.dart';
import 'package:project/theme/theme_helper.dart';
import 'package:project/utils/size_utils.dart';
import 'package:project/widget/custom_text_field.dart';

class BiddingPage extends StatefulWidget {
  const BiddingPage({super.key});

  @override
  State<BiddingPage> createState() => _BiddingPageState();
}

class _BiddingPageState extends State<BiddingPage> {
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
              'Sign Up to Participate\nIn Auction',
              style: TextStyle(
                              fontFamily: "Roboto Sans",
                              fontSize: 30,
                              fontWeight: FontWeight.w500
                          
                          ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,top: 10),
            child: Text(
              'To Participate in Auction you have to Pay\nAuction fee.',
              style: TextStyle(
                              fontFamily: "Roboto Sans",
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          
                          ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,top: 10),
            child: Text(
              'JOD 30',
              style: TextStyle(
                              fontFamily: "Roboto Sans",
                              fontSize: 24,
                              fontWeight: FontWeight.w500
                          
                          ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,top: 20),
            child: Text(
              'Hello, User',
              style: TextStyle(
                              fontFamily: "Roboto Sans",
                              fontSize: 24,
                              fontWeight: FontWeight.w500
                          
                          ),),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Credit Card*',
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                          SizedBox(height: 10.v),
                                          CustomTextFormField(
                                              controller:
                                                  _CreditCardController,
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
            margin: EdgeInsets.only(top:0,left: 20,bottom: 20,right: 20),
            child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'CVV Number*',
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                        SizedBox(height: 10.v),
                                        CustomTextFormField(
                                            suffix: IconButton(onPressed: (){
                                              setState(() {
                                                _visibilityText =! _visibilityText;
                                              });
                                            }, icon: Icon( _visibilityText ? Icons.visibility_off : Icons.visibility,size: 25, color: Colors.white,)),
                                            obscureText: _visibilityText,
                                            controller: _creditCVVNumberController,
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
                                    SizedBox(height: 20.v),
                                    Center(
                    child: InkWell(
                      onTap: (){
                         Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        checkoutbidpg())));
                      },
                      child: Container(margin: EdgeInsets.only(right: 20,top: 20),
                           width: screenWidth * 0.87,
                      height: screenHeight * 0.06,
                                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                                      color: Colors.white,
                      ),
                      child: Center(
                        child: Text("Start Auction",
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
          ]),
          
    );
  }
}