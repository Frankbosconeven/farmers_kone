import 'package:device_preview/device_preview.dart';
import 'package:farmers_konekt/farmer/comfirm.dart';
import 'package:farmers_konekt/farmer/dashboard.dart';
import 'package:farmers_konekt/farmer/user_profile.dart';
import 'package:farmers_konekt/homeview/home_view.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
    new SplashScreen(
  seconds: 14,
  navigateAfterSeconds: const Duration(seconds: 5),
  title: new Text('Farmer Konekt'),
  image: new Image.asset('screenshot.png'),
  backgroundColor: Colors.white,
  styleTextUnderTheLoader: new TextStyle(),
  photoSize: 100.0,
  loaderColor: Colors.red
);
  }
}
