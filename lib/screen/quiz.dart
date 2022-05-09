import 'package:carousel_slider/carousel_controller.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flame_example/controller/question_controller.dart';
import 'package:flame_example/game/game.dart';
import 'package:flame_example/screen/controller/home_controller.dart';
import 'package:flame_example/widgets/button_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cont = Get.find<QuestionController>();
    final controllerX = Get.put(HomeController());
    final CarouselController controller = CarouselController();
    final game = MyGame();
    return Scaffold(
      key: controllerX.scaffoldKey,
      body: GameWidget(
        game: game,
        initialActiveOverlays: const ['AudioButtons'],
        overlayBuilderMap: {
          "AudioButtons": (BuildContext ctx, MyGame game) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "soru" * 20,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      spriteButtonBuilder(
                        "Evet",
                        () {
                          cont.controller.nextPage();
                          //FlameAudio.play("buzz_3.wav");
                          print('Short Audio Pressed');
                        },
                      ),
                      spriteButtonBuilder(
                        "Hayır",
                        () {
                          cont.controller.nextPage();
                          print('Long Audio Pressed');
                          //FlameAudio.playLongAudio("buzz_3.wav");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      spriteButtonBuilder(
                        "Evet",
                        () {
                          cont.controller.nextPage();
                          //FlameAudio.play("buzz_3.wav");
                          print('Short Audio Pressed');
                        },
                      ),
                      spriteButtonBuilder(
                        "Hayır",
                        () {
                          cont.controller.nextPage();
                          print('Long Audio Pressed');
                          //FlameAudio.playLongAudio("buzz_3.wav");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
