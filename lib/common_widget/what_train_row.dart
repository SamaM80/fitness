import 'package:fitness01/common/color_extension.dart';
import 'package:fitness01/common_widget/round_button.dart';
import 'package:flutter/material.dart';
//import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class WhatTrainRow extends StatelessWidget {
  final Map wObj;
  const WhatTrainRow({super.key, required this.wObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Tcolor.primaryColor2.withAlpha(80),
              Tcolor.primaryColor1.withAlpha(80),
            ],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wObj["title"].toString(),
                    style: TextStyle(
                      color: Tcolor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "${wObj["exercises"].toString()} | ${wObj["time"].toString()}",
                    style: TextStyle(color: Tcolor.gray, fontSize: 12),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: RoundButton(
                      title: "View More",
                      fontsize: 10,
                      type: RoundButtonType.textGradient,
                      elevation: 0.05,
                      fontWeight: FontWeight.w400,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 15),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(120),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    wObj["image"].toString(),
                    width: 90,
                    height: 90,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
