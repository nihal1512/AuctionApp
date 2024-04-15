import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:project/screens/home.dart';
import 'package:project/screens/singnup.dart';
import 'package:project/theme/theme_helper.dart';
import 'package:project/utils/image_constant.dart';
import 'package:project/utils/size_utils.dart';
import 'package:project/widget/custom_button.dart';
import 'package:project/widget/custom_imge_view.dart';
import 'package:project/widget/custom_text_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameEmailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;
  bool _visibilityText = true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.background,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    height: mediaQueryData.size.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 28.h, vertical: 166.v),
                              //decoration: BoxDecoration(
                              // image: DecorationImage(
                              //     image: fs.Svg(ImageConstant.imgGroup221),
                              //     fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Text("Sign In",
                                            style:
                                                theme.textTheme.displaySmall)),
                                    SizedBox(height: 27.v),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Username or Email Address*',
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                        SizedBox(height: 10.v),
                                        CustomTextFormField(
                                            controller:
                                                _usernameEmailController,
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
                                    SizedBox(height: 20.v),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Password*',
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
                                            controller: _passwordController,
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
                                    SizedBox(height: 10.v),
                                    Row(
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
                                                "Remember Me",
                                                style: theme
                                                    .textTheme.bodyMedium!
                                                    .copyWith(
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(child: Container()),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                              child: Text("Forget Password?",
                                                  style: theme
                                                      .textTheme.bodyMedium!
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 40.v),
                                    CustomElevatedButton(
                                        text: "Sign In", onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder:((context)=>HomePage()) ));
                                    }),
                                    SizedBox(height: 20.v),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Text('Don’t have  an Account?',
                                              style:
                                                  theme.textTheme.bodySmall!),
                                        ),
                                        SizedBox(width: 5,),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        SignupScreen())));
                                          },
                                          child: Container(
                                              child: Text("Sign Up",
                                                  style: theme
                                                      .textTheme.labelLarge!
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline))),
                                        ),
                                      ],
                                    )
                                  ])))
                    ])))));
  }

  /// Navigates to the otpVerifyScreen when the action is triggered.
  // onTapLogin(BuildContext context) {
  //   Navigator.pushReplacementNamed(context, AppRoutes.otpVerifyScreen);
  // }
}
