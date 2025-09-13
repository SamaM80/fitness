import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:fitness01/common/color_extension.dart';
import 'package:fitness01/common_widget/round_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<int> showingTooltipOnSpots = [21];

  List<FlSpot> get allSpots => const [
    FlSpot(0, 20),
    FlSpot(1, 25),
    FlSpot(2, 40),
    FlSpot(3, 50),
    FlSpot(4, 35),
    FlSpot(5, 40),
    FlSpot(6, 30),
    FlSpot(7, 20),
    FlSpot(8, 25),
    FlSpot(9, 40),
    FlSpot(10, 50),
    FlSpot(11, 35),
    FlSpot(12, 50),
    FlSpot(13, 60),
    FlSpot(14, 40),
    FlSpot(15, 50),
    FlSpot(16, 20),
    FlSpot(17, 25),
    FlSpot(18, 40),
    FlSpot(19, 50),
    FlSpot(20, 35),
    FlSpot(21, 80),
    FlSpot(22, 30),
    FlSpot(23, 20),
    FlSpot(24, 25),
    FlSpot(25, 40),
    FlSpot(26, 50),
    FlSpot(27, 35),
    FlSpot(28, 50),
    FlSpot(29, 60),
    FlSpot(30, 40),
  ];

  List waterArr = [
    {"title": "6am - 8am", "subtitle": "600ml"},
    {"title": "9am - 11am", "subtitle": "500ml"},
    {"title": "11am - 2pm", "subtitle": "1000ml"},
    {"title": "2pm - 4pm", "subtitle": "700ml"},
    {"title": "4pm - now", "subtitle": "900ml"},
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    final lineBarsData = [
      LineChartBarData(
        showingIndicators: showingTooltipOnSpots,
        spots: allSpots,
        isCurved: false,
        barWidth: 3,

        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [
              Tcolor.primaryColor2.withAlpha(100),
              Tcolor.primaryColor1.withAlpha(40),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        dotData: FlDotData(show: false),
        gradient: LinearGradient(colors: Tcolor.primaryG),
      ),
    ];
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        padding: const EdgeInsets.symmetric(
                          vertical: 25,
                          horizontal: 25,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                SizedBox(height: media.width * 0.05),
                                SizedBox(
                                  width: 120,
                                  height: 35,
                                  child: RoundButton(
                                    title: "View More",
                                    type: RoundButtonType.bgSGradient,
                                    fontsize: 12,
                                    fontWeight: FontWeight.w400,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            AspectRatio(
                              aspectRatio: 1,
                              child: PieChart(
                                PieChartData(
                                  pieTouchData: PieTouchData(
                                    touchCallback:
                                        (
                                          FlTouchEvent event,
                                          pieTouchResponse,
                                        ) {},
                                  ),
                                  startDegreeOffset: 250,
                                  borderData: FlBorderData(show: false),
                                  sectionsSpace: 1,
                                  centerSpaceRadius: 0,
                                  sections: showingSections(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: media.width * 0.05),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Tcolor.primaryColor2.withAlpha(60),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
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
                        width: 90,
                        height: 25,
                        child: RoundButton(
                          title: "Check",
                          type: RoundButtonType.bgGradient,
                          fontsize: 12,
                          fontWeight: FontWeight.w400,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: media.width * 0.05),
                Text(
                  "Activity Status",
                  style: TextStyle(
                    color: Tcolor.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: media.width * 0.02),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: media.width * 0.4,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Tcolor.primaryColor2.withAlpha(80),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 20,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Heart Rate",
                                style: TextStyle(
                                  color: Tcolor.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (bounds) {
                                  return LinearGradient(
                                    colors: Tcolor.primaryG,
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ).createShader(
                                    Rect.fromLTRB(
                                      0,
                                      0,
                                      bounds.width,
                                      bounds.height,
                                    ),
                                  );
                                },
                                child: Text(
                                  "78 BPM",
                                  style: TextStyle(
                                    color: Tcolor.white.withAlpha(125),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        LineChart(
                          LineChartData(
                            showingTooltipIndicators: showingTooltipOnSpots.map(
                              (index) {
                                final tooltipsOnBar = lineBarsData.first;
                                return ShowingTooltipIndicators([
                                  LineBarSpot(
                                    tooltipsOnBar,
                                    lineBarsData.indexOf(tooltipsOnBar),
                                    tooltipsOnBar.spots[index],
                                  ),
                                ]);
                              },
                            ).toList(),
                            lineTouchData: LineTouchData(
                              enabled: true,
                              handleBuiltInTouches: false,
                              touchCallback:
                                  (
                                    FlTouchEvent event,
                                    LineTouchResponse? response,
                                  ) {
                                    if (response == null ||
                                        response.lineBarSpots == null) {
                                      return;
                                    }
                                    if (event is FlTapUpEvent) {
                                      final spotIndex = response
                                          .lineBarSpots!
                                          .first
                                          .spotIndex;
                                      showingTooltipOnSpots.clear();
                                      setState(() {
                                        showingTooltipOnSpots.add(spotIndex);
                                      });
                                    }
                                  },
                              mouseCursorResolver:
                                  (
                                    FlTouchEvent event,
                                    LineTouchResponse? response,
                                  ) {
                                    if (response == null ||
                                        response.lineBarSpots == null) {
                                      return SystemMouseCursors.basic;
                                    }
                                    return SystemMouseCursors.click;
                                  },
                              getTouchedSpotIndicator:
                                  (
                                    LineChartBarData barData,
                                    List<int> spotIndexes,
                                  ) {
                                    return spotIndexes.map((index) {
                                      return TouchedSpotIndicatorData(
                                        FlLine(color: Colors.transparent),
                                        FlDotData(
                                          show: true,
                                          getDotPainter:
                                              (spot, percent, barData, index) =>
                                                  FlDotCirclePainter(
                                                    radius: 3,
                                                    color: Colors.white,
                                                    strokeWidth: 3,
                                                    strokeColor:
                                                        Tcolor.secondaryColor1,
                                                  ),
                                        ),
                                      );
                                    }).toList();
                                  },
                              touchTooltipData: LineTouchTooltipData(
                                getTooltipColor: (LineBarSpot spot) =>
                                    Tcolor.secondaryColor1,
                                tooltipRoundedRadius: 20,
                                getTooltipItems:
                                    (List<LineBarSpot> lineBarsSpot) {
                                      return lineBarsSpot.map((lineBarSpot) {
                                        return LineTooltipItem(
                                          "${lineBarSpot.x.toInt()} mins ago",
                                          const TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        );
                                      }).toList();
                                    },
                              ),
                            ),
                            lineBarsData: lineBarsData,
                            minY: 0,
                            maxY: 130,
                            titlesData: FlTitlesData(show: false),
                            gridData: const FlGridData(show: false),
                            borderData: FlBorderData(
                              show: true,
                              border: Border.all(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: media.width * 0.05),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: media.width * 0.95,
                        padding: const EdgeInsets.symmetric(
                          vertical: 25,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(color: Colors.black12, blurRadius: 2),
                          ],
                        ),
                        child: Row(
                          children: [
                            SimpleAnimationProgressBar(
                              height: media.width * 0.85,
                              width: media.width * 0.07,
                              backgroundColor: Colors.grey.shade100,
                              foregroundColor: Colors.purple,
                              ratio: 0.5,
                              direction: Axis.vertical,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(seconds: 3),
                              borderRadius: BorderRadius.circular(15),
                              gradientColor: LinearGradient(
                                colors: Tcolor.primaryG,
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),

                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Water Intake",
                                    style: TextStyle(
                                      color: Tcolor.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (bounds) {
                                      return LinearGradient(
                                        colors: Tcolor.primaryG,
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ).createShader(
                                        Rect.fromLTRB(
                                          0,
                                          0,
                                          bounds.width,
                                          bounds.height,
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "4 Litres",
                                      style: TextStyle(
                                        color: Tcolor.white.withAlpha(125),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Real time update",
                                    style: TextStyle(
                                      color: Tcolor.gray,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: waterArr.map((w0bj) {
                                      var isLast = w0bj == waterArr.last;
                                      return Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                  vertical: 4,
                                                ),
                                                width: 10,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Tcolor.secondaryColor1
                                                      .withAlpha(100),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                              if (!isLast)
                                                DottedDashedLine(
                                                  height: media.width * 0.078,
                                                  width: 0,
                                                  dashColor: Tcolor
                                                      .secondaryColor1
                                                      .withAlpha(100),
                                                  axis: Axis.vertical,
                                                ),
                                            ],
                                          ),
                                          const SizedBox(width: 10),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                w0bj["title"].toString(),
                                                style: TextStyle(
                                                  color: Tcolor.gray,
                                                  fontSize: 10,
                                                ),
                                              ),
                                              ShaderMask(
                                                blendMode: BlendMode.srcIn,
                                                shaderCallback: (bounds) {
                                                  return LinearGradient(
                                                    colors: Tcolor.secondaryG,
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                  ).createShader(
                                                    Rect.fromLTRB(
                                                      0,
                                                      0,
                                                      bounds.width,
                                                      bounds.height,
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  w0bj["subtitle"].toString(),
                                                  style: TextStyle(
                                                    color: Tcolor.white
                                                        .withAlpha(100),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: media.width * 0.05),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.maxFinite,
                            padding: const EdgeInsets.symmetric(
                              vertical: 25,
                              horizontal: 20,
                            ),
                            height: media.width * 0.45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [
                                BoxShadow(color: Colors.black12, blurRadius: 2),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sleep",
                                  style: TextStyle(
                                    color: Tcolor.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                ShaderMask(
                                  blendMode: BlendMode.srcIn,
                                  shaderCallback: (bounds) {
                                    return LinearGradient(
                                      colors: Tcolor.primaryG,
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ).createShader(
                                      Rect.fromLTRB(
                                        0,
                                        0,
                                        bounds.width,
                                        bounds.height,
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "8h 20m",
                                    style: TextStyle(
                                      color: Tcolor.white.withAlpha(125),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/img/sleep_grap.png",
                                  width: double.maxFinite,
                                  fit: BoxFit.fitWidth,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: media.width * 0.05),
                          Container(
                            width: double.maxFinite,
                            padding: const EdgeInsets.symmetric(
                              vertical: 25,
                              horizontal: 20,
                            ),
                            height: media.width * 0.45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [
                                BoxShadow(color: Colors.black12, blurRadius: 2),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Calories",
                                  style: TextStyle(
                                    color: Tcolor.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                ShaderMask(
                                  blendMode: BlendMode.srcIn,
                                  shaderCallback: (bounds) {
                                    return LinearGradient(
                                      colors: Tcolor.primaryG,
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ).createShader(
                                      Rect.fromLTRB(
                                        0,
                                        0,
                                        bounds.width,
                                        bounds.height,
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "760 Kcal",
                                    style: TextStyle(
                                      color: Tcolor.white.withAlpha(125),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: media.width * 0.2,
                                    height: media.width * 0.2,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: media.width * 0.15,
                                          height: media.width * 0.15,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: Tcolor.primaryG,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              media.width * 0.075,
                                            ),
                                          ),
                                          child: FittedBox(
                                            child: Text(
                                              "230 Kcal\nLeft",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Tcolor.white,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SimpleCircularProgressBar(
                                          progressStrokeWidth: 10,
                                          backStrokeWidth: 10,
                                          progressColors: Tcolor.primaryG,
                                          backColor: Colors.grey.shade100,
                                          valueNotifier: ValueNotifier(50),
                                          startAngle: -180,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: media.width * 0.1),

                Container(
                  height: media.width * 0.4,
                  width: double.maxFinite,

                  child: LineChart(
                    LineChartData(
                      showingTooltipIndicators: showingTooltipOnSpots.map((
                        index,
                      ) {
                        final tooltipsOnBar = lineBarsData.first;
                        return ShowingTooltipIndicators([
                          LineBarSpot(
                            tooltipsOnBar,
                            lineBarsData.indexOf(tooltipsOnBar),
                            tooltipsOnBar.spots[index],
                          ),
                        ]);
                      }).toList(),
                      lineTouchData: LineTouchData(
                        enabled: true,
                        handleBuiltInTouches: false,
                        touchCallback:
                            (FlTouchEvent event, LineTouchResponse? response) {
                              if (response == null ||
                                  response.lineBarSpots == null) {
                                return;
                              }
                              if (event is FlTapUpEvent) {
                                final spotIndex =
                                    response.lineBarSpots!.first.spotIndex;
                                showingTooltipOnSpots.clear();
                                setState(() {
                                  showingTooltipOnSpots.add(spotIndex);
                                });
                              }
                            },
                        mouseCursorResolver:
                            (FlTouchEvent event, LineTouchResponse? response) {
                              if (response == null ||
                                  response.lineBarSpots == null) {
                                return SystemMouseCursors.basic;
                              }
                              return SystemMouseCursors.click;
                            },
                        getTouchedSpotIndicator:
                            (LineChartBarData barData, List<int> spotIndexes) {
                              return spotIndexes.map((index) {
                                return TouchedSpotIndicatorData(
                                  FlLine(color: Colors.transparent),
                                  FlDotData(
                                    show: true,
                                    getDotPainter:
                                        (spot, percent, barData, index) =>
                                            FlDotCirclePainter(
                                              radius: 3,
                                              color: Colors.white,
                                              strokeWidth: 3,
                                              strokeColor:
                                                  Tcolor.secondaryColor1,
                                            ),
                                  ),
                                );
                              }).toList();
                            },
                        touchTooltipData: LineTouchTooltipData(
                          getTooltipColor: (LineBarSpot spot) =>
                              Tcolor.secondaryColor1,
                          tooltipRoundedRadius: 20,
                          getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                            return lineBarsSpot.map((lineBarSpot) {
                              return LineTooltipItem(
                                "${lineBarSpot.x.toInt()} mins ago",
                                const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            }).toList();
                          },
                        ),
                      ),
                      lineBarsData: lineBarsData1,
                      minY: 0,
                      maxY: 130,
                      titlesData: FlTitlesData(show: false),
                      gridData: const FlGridData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: media.width * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      var color0 = Tcolor.secondaryColor1;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: color0,
            value: 33,
            title: '',
            radius: 50,
            titlePositionPercentageOffset: 0.55,
            badgeWidget: const Text(
              "20.1",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.white,
            value: 75,
            title: '',
            radius: 42,
            titlePositionPercentageOffset: 0.55,
          );

        default:
          throw Error();
      }
    });
  }

  LineTouchData get lineTouchData1 => LineTouchData(
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      getTooltipColor: (touchedSpot) => Colors.blueGrey.withValues(alpha: 0.8),
    ),
  );

  List<LineChartBarData> get lineBarsData1 => [
    lineChartBarData1_1,
    lineChartBarData1_2,
  ];

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
    isCurved: true,
    gradient: LinearGradient(
      colors: [
        Tcolor.primaryColor2.withAlpha(100),
        Tcolor.primaryColor1.withAlpha(100),
      ],
    ),
    barWidth: 4,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(show: false),
    spots: const [
      FlSpot(1, 10),
      FlSpot(2, 30),
      FlSpot(3, 50),
      FlSpot(4, 30),
      FlSpot(5, 5),
      FlSpot(6, 40),
      FlSpot(7, 100),
    ],
  );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
    isCurved: true,
    gradient: LinearGradient(
      colors: [
        Tcolor.secondaryColor2.withAlpha(100),
        Tcolor.secondaryColor1.withAlpha(100),
      ],
    ),
    barWidth: 4,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(show: false),
    spots: const [
      FlSpot(1, 50),
      FlSpot(2, 30),
      FlSpot(3, 10),
      FlSpot(4, 40),
      FlSpot(5, 80),
      FlSpot(6, 60),
      FlSpot(7, 40),
    ],
  );
}
