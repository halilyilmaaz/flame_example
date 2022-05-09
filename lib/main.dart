import 'package:carousel_slider/carousel_controller.dart';
import 'package:flame_example/controller/question_controller.dart';
import 'package:flame_example/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final cont = Get.find<QuestionController>();
    final CarouselController controller = CarouselController();
    return MaterialApp(
        title: 'Quiz App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomeScreen());
  }
}
