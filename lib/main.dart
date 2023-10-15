import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posts_app/view/screens/home_screen.dart';
import 'package:posts_app/view/screens/login_screen.dart';
void main ( ){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.nameRoute,
      getPages: [
        GetPage(name: LoginScreen.nameRoute, page: () => LoginScreen(),),
        GetPage(name: HomeScreen.nameRoute, page: () => HomeScreen(),),
      ],
      defaultTransition: Transition.rightToLeftWithFade,


    ) ;
  }
}
