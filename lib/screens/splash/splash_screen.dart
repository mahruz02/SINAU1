import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/splash/components/body.dart';
import 'package:shop_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    if (FirebaseAuth.instance.currentUser != null) {
      //jika user tidak null, berarti sebelumnya sudah login. langsung aja masuk halaman utama
      Future.microtask(() => Navigator.pushNamed(context, HomeScreen.routeName));
    }
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
