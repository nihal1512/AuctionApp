import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project/routes/routes.dart';
import 'package:project/screens/splashscreen.dart';
import 'package:project/theme/theme_helper.dart';
var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  
  runApp( ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'xuldimeapp',
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRoutes.splashScreen,
      home:SplashScreen(),
      routes: AppRoutes.routes,
      
    );
  }
}
