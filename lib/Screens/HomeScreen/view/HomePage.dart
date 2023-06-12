import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:school_app/Screens/HomeScreen/controller/HomeController.dart';
import 'package:school_app/Screens/Utils/Widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeController homeController  = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("School App"),
          actions: [
            IconButton(onPressed: (){Widgets.widgets.ShowLoadingDialong();}, icon: Icon(Icons.notifications)),
            IconButton(onPressed: (){Widgets.widgets.ShowLoadingDialong();}, icon: Icon(Icons.more_vert)),
          ],
          leading: IconButton(
            onPressed: () => homeController.zoomDrawerController.toggle!(),
            icon: Icon(Icons.menu),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: SizedBox(
                height: 230,
                width: Get.width,
                child: CarouselSlider.builder(
                  itemCount: 15,
                  itemBuilder: (context, index, realIndex) {
                    return InkWell(
                      onTap: () {
                      },
                      child: Container(
                        height: Get.height / 4,
                        width: Get.width / 1.12,
                        margin: EdgeInsets.only(top: Get.width / 50),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade600,
                                  offset: Offset(0,0),
                                  blurRadius: 15
                              )
                            ]
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",fit: BoxFit.fill,),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    // aspectRatio: 0,
                    enlargeCenterPage: true,
                    // animateToClosest: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlay: true,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: GridView.builder(

                  itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisExtent: 130,crossAxisSpacing: 8,mainAxisSpacing: 8),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0,0)
                          )
                        ]
                      ),
                    ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
