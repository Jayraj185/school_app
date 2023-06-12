import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Screens/DrawerScreen/view/DrawerPage.dart';
import 'package:school_app/Screens/HomeScreen/view/HomePage.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (p0) => const DrawerPage(),
        'Home' : (p0) => const HomePage(),
      },
    )
  );
}