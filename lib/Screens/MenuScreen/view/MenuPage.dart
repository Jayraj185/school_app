import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  FlutterLogo(size: Get.width/6,),
                  SizedBox(width: Get.width/60,),
                  Text("Kaushal Vidhyabhavan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),)
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 18,
                itemBuilder: (context, index) => SizedBox(height: 60,child: Row(
                  children: [
                    Icon(Icons.home),
                    SizedBox(width: 30,),
                    Text("Home")
                  ],
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
