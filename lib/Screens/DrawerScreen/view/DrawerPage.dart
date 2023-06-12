import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:school_app/Screens/HomeScreen/controller/HomeController.dart';
import 'package:school_app/Screens/HomeScreen/view/HomePage.dart';
import 'package:school_app/Screens/MenuScreen/view/MenuPage.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  HomeController homeController  = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ZoomDrawer(
          controller: homeController.zoomDrawerController,
          mainScreen: const HomePage(),
          menuScreen: const MenuPage(),
          mainScreenTapClose: true,
          borderRadius: 24,
          menuScreenWidth: 300,
          showShadow: true,
          angle: 0,
          menuBackgroundColor: Colors.grey.shade300,
          slideWidth: Get.width * (homeController.zoomDrawerController.isOpen != null ? .65 : .65),
        ),
      ),
    );
  }
}
