import 'package:fitness01/common/color_extension.dart';
import 'package:fitness01/common_widget/tab_button.dart';
import 'package:fitness01/view/home/blank_view.dart';
import 'package:fitness01/view/home/home_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket();
  Widget curentTab = const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: PageStorage(bucket: pageBucket, child: curentTab),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: Tcolor.primaryG),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Icon(Icons.search, color: Tcolor.white, size: 30),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Tcolor.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(30),
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: SizedBox(
            height: kToolbarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(
                  icon: "assets/img/home_tab.png",
                  selectIcon: "assets/img/home_tab_select.png",
                  isActive: selectTab == 0,
                  onTap: () {
                    selectTab = 0;
                    curentTab = const HomeView();
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
                TabButton(
                  icon: "assets/img/activity_tab.png",
                  selectIcon: "assets/img/activity_tab_select.png",
                  isActive: selectTab == 1,
                  onTap: () {
                    selectTab = 1;
                    curentTab = const BlankView();
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(width: 40),
                TabButton(
                  icon: "assets/img/camera_tab.png",
                  selectIcon: "assets/img/camera_tab_select.png",
                  isActive: selectTab == 2,
                  onTap: () {
                    selectTab = 2;
                    curentTab = const BlankView();
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
                TabButton(
                  icon: "assets/img/profile_tab.png",
                  selectIcon: "assets/img/profile_tab_select.png",
                  isActive: selectTab == 3,
                  onTap: () {
                    selectTab = 3;
                    curentTab = const BlankView();
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
