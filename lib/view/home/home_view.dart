import 'package:fitness01/common/color_extension.dart';
import 'package:fitness01/common_widget/round_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

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
              Tcolor.primaryColor1.withAlpha(40),
            ],
          ),
        ),
        dotData: FlDotData(show: false),
        gradient: LinearGradient(
          colors: Tcolor.primaryG,
          stops: const [0.1, 0.4],
        ),
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
                            vertical: 25,
                            horizontal: 25,
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
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
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
                                      setState(() {
                                        if (showingTooltipOnSpots.contains(
                                          spotIndex,
                                        )) {
                                          showingTooltipOnSpots.remove(
                                            spotIndex,
                                          );
                                        } else {
                                          showingTooltipOnSpots.add(spotIndex);
                                        }
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
                                          lineBarSpot.y.toString(),
                                          const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        );
                                      }).toList();
                                    },
                              ),
                            ),
                            lineBarsData: lineBarsData,
                            minY: 0,
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
}
