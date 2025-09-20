import 'package:fitness01/common/color_extension.dart';
import 'package:flutter/material.dart';

import '../../common_widget/latest_activity_row.dart';
import '../../common_widget/round_button.dart';
import '../../common_widget/today_target_call.dart';

class ActivityTrackerView extends StatefulWidget {
  const ActivityTrackerView({super.key});

  @override
  State<ActivityTrackerView> createState() => _ActivityTrackerViewState();
}

class _ActivityTrackerViewState extends State<ActivityTrackerView> {
  List latestArr = [
    {
      "image": "assets/img/pic_4.png",
      "title": "Drinking 300ml Water",
      "time": "About 1 minutes ago",
    },
    {
      "image": "assets/img/pic_5.png",
      "title": "Eat Snack (Fitbar)",
      "time": "About 3 hours ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Tcolor.white,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Tcolor.lightGray,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              "assets/img/black_btn.png",
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "Activity Tracker",
          style: TextStyle(
            color: Tcolor.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Tcolor.lightGray,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/img/more_btn.png",
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Tcolor.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Tcolor.primaryColor2.withAlpha(50),
                      Tcolor.primaryColor1.withAlpha(50),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today Target",
                          style: TextStyle(
                            color: Tcolor.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: Tcolor.primaryG),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              height: 30,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              textColor: Tcolor.primaryColor1,
                              minWidth: double.maxFinite,
                              elevation: 0,
                              color: Colors.transparent,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      children: [
                        Expanded(
                          child: TodayTargetCall(
                            icon: "assets/img/water.png",
                            value: "8L",
                            title: "Water Intake",
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: TodayTargetCall(
                            icon: "assets/img/foot.png",
                            value: "2400",
                            title: "Foot Steps",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: media.width * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Activity Progress",
                    style: TextStyle(
                      color: Tcolor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: Tcolor.primaryG),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        items: ["Weekly", "Monthly"]
                            .map(
                              (name) => DropdownMenuItem(
                                value: name,
                                child: Text(
                                  name,
                                  style: TextStyle(
                                    color: Tcolor.gray,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {},
                        icon: Icon(Icons.expand_more, color: Tcolor.white),
                        hint: Text(
                          "Weekly",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Tcolor.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Tcolor.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

              SizedBox(height: media.width * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Workout",
                    style: TextStyle(
                      color: Tcolor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See more",
                      style: TextStyle(
                        color: Tcolor.gray,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: latestArr.length,
                itemBuilder: (context, index) {
                  var wObj = latestArr[index] as Map? ?? {};
                  return LatestActivityRow(wObj: wObj);
                },
              ),

              SizedBox(height: media.width * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
