import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Widgets
{
  Widgets._();
  static Widgets widgets = Widgets._();

  void ShowLoadingDialong()
  {
    Get.defaultDialog(
      backgroundColor: Colors.transparent,
      title: "",
      content: Container(
        height: 80,
        width: 80,
        color: Colors.white,
      )
    );
  }
}