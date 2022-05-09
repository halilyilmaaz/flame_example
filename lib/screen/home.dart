import 'package:carousel_slider/carousel_slider.dart';
import 'package:flame_example/controller/question_controller.dart';
import 'package:flame_example/screen/controller/home_controller.dart';
import 'package:flame_example/screen/quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cont = Get.put(QuestionController());

    PageController pageController = PageController();
    final double height = MediaQuery.of(context).size.height;
    //final CarouselController controller = CarouselController();
    return Expanded(
        child: Column(
      children: [
        CarouselSlider(
          items: [Quiz()],
          options: CarouselOptions(
              //autoPlay: true,
              autoPlayInterval: Duration(seconds: 6),
              //autoPlayAnimationDuration: Duration(seconds: 5),
              height: height,
              viewportFraction: 1,
              enlargeCenterPage: true),
          carouselController: cont.controller,
        ),
      ],
    ));
  }
}
