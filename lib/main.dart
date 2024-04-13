import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:project/routes/routes.dart';
import 'package:project/screens/splashscreen.dart';
import 'package:project/theme/theme_helper.dart';
var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
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
