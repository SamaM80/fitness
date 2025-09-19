import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness01/view/login/welcome_view.dart';
import 'package:flutter/material.dart';
import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';

class WhatYourGoalView extends StatefulWidget {
  const WhatYourGoalView({super.key});

  @override
  State<WhatYourGoalView> createState() => _WhatYourGoalViewState();
}

class _WhatYourGoalViewState extends State<WhatYourGoalView> {
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();
  List goalArr = [
    {
      "image": "assets/img/goal_1.png",
      "title": "Improve shape",
      "subtitle":
          "I have a low amont of body fat\nand need / want to build more\nmuscle",
    },
    {
      "image": "assets/img/goal_2.png",
      "title": "Lean & Tone",
      "subtitle":
          "i'm skinny fat. look thin but have \nno shape. I want to add learn\nmuscle in the right way",
    },
    {
      "image": "assets/img/goal_3.png",
      "title": "Lose a Fat",
      "subtitle":
          "I have over 20 lbs to lose. i want to\ndrop all this fat and gain muscle\nmess",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: CarouselSlider(
                items: goalArr
                    .map(
                      (g0bj) => Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: Tcolor.primaryG,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: media.width * 0.1,
                          horizontal: 25,
                        ),
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Column(
                            children: [
                              Image.asset(
                                g0bj["image"].toString(),
                                width: media.width * 0.6,
                                fit: BoxFit.fitWidth,
                              ),
                              SizedBox(height: media.width * 0.1),
                              Text(
                                g0bj["title"].toString(),
                                style: TextStyle(
                                  color: Tcolor.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                g0bj["title"].toString(),
                                style: TextStyle(
                                  color: Tcolor.white,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: media.width * 0.02),
                              Text(
                                g0bj["subtitle"].toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Tcolor.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 0.74,
                  initialPage: 0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              width: media.width,
              child: Column(
                children: [
                  SizedBox(height: media.width * 0.05),
                  Text(
                    "What is your goal?",
                    style: TextStyle(
                      color: Tcolor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "It will help us to choose the best \nprogram for you",
                    style: TextStyle(color: Tcolor.gray, fontSize: 12),
                  ),
                  const Spacer(),
                  SizedBox(height: media.width * 0.05),
                  RoundButton(
                    title: "Confirm",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomeView()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
