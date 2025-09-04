import 'package:fitness01/common/color_extension.dart';
import 'package:fitness01/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back,",
                          style: TextStyle(color: Tcolor.gray, fontSize: 12),
                        ),
                        Text(
                          "Sama Mirzaee",
                          style: TextStyle(
                            color: Tcolor.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: media.width * 0.05),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/notification_active.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: media.width * 0.05),
                Container(
                  height: media.width * 0.4,

                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: Tcolor.primaryG),
                    borderRadius: BorderRadius.circular(media.width * 0.075),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/img/bg_dots.png",
                        height: media.width * 0.4,
                        width: double.maxFinite,
                        fit: BoxFit.fitHeight,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 25,
                          horizontal: 15,
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BMI (Body Mass Index)",
                                  style: TextStyle(
                                    color: Tcolor.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "You have a normal weight.",
                                  style: TextStyle(
                                    color: Tcolor.white.withAlpha(125),
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: media.width * 0.01),
                                SizedBox(
                                  width: 120,
                                  height: 30,
                                  child: RoundButton(
                                    title: "View More",
                                    type: RoundButtonType.bgSGradient,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
