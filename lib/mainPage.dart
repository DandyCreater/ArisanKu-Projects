// ignore_for_file: unused_element

import 'package:arisanku/data/utils/resource/color/color_manager.dart';
import 'package:arisanku/data/utils/resource/font/font_manager.dart';
import 'package:arisanku/presentation/screen/arisanku-Scene/arisanku_screen.dart';
import 'package:arisanku/presentation/screen/arisanyuk-Scene/arisanyuk_screen.dart';
import 'package:arisanku/presentation/screen/homepage-Scene/homepage_screen.dart';
import 'package:arisanku/presentation/screen/pay-Scene/pay_scene.dart';
import 'package:arisanku/presentation/screen/profile-Scene/profile_scene.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  var pages = [
    const HomePageScene(),
    const ArisanYukScene(),
    // const PayScene(),
    const ArisanKuScene(),
    const ProfileScene(),
  ];

  void _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: ColorManager.backgroundColor,
          body: pages[_currentIndex],
          bottomNavigationBar: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: EdgeInsets.only(top: 0, bottom: 2.h),
                margin:
                    EdgeInsets.only(left: 5.w, right: 5.w, bottom: 0, top: 0),
                height: 13.h,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                        color: ColorManager.shadowColor,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BottomAppBar(
                      color: ColorManager.whiteColor,
                      child: Padding(
                        padding: EdgeInsets.only(top: 1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () => _onTapped(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  (_currentIndex == 0)
                                      ? SvgPicture.asset(
                                          "assets/icons/icon_homeActive.svg",
                                          height: 6.h,
                                          width: 6.w,
                                        )
                                      : SvgPicture.asset(
                                          "assets/icons/icon_homeInactive.svg",
                                          height: 6.h,
                                          width: 6.w,
                                        ),
                                  Text(
                                    "Home",
                                    style: regularStyle(
                                        fontSize: 12.sp,
                                        color: (_currentIndex == 0)
                                            ? ColorManager.blackColor
                                            : ColorManager.greyColor),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _onTapped(1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  (_currentIndex == 1)
                                      ? SvgPicture.asset(
                                          "assets/icons/icon_arisanyukActive.svg",
                                          height: 6.h,
                                          width: 6.w,
                                        )
                                      : SvgPicture.asset(
                                          "assets/icons/icon_arisanyukInactive.svg",
                                          height: 6.h,
                                          width: 6.w,
                                        ),
                                  Text(
                                    "Arisan Yuk",
                                    style: regularStyle(
                                        fontSize: 12.sp,
                                        color: (_currentIndex == 1)
                                            ? ColorManager.blackColor
                                            : ColorManager.greyColor),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6.h,
                              height: 6.h,
                            ),
                            GestureDetector(
                              onTap: () => _onTapped(2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  (_currentIndex == 2)
                                      ? SvgPicture.asset(
                                          "assets/icons/icon_arisankuActive.svg",
                                          height: 6.h,
                                          width: 6.w,
                                        )
                                      : SvgPicture.asset(
                                          "assets/icons/icon_arisankuInactive.svg",
                                          height: 6.h,
                                          width: 6.w,
                                        ),
                                  Text(
                                    "Arisanku",
                                    style: regularStyle(
                                        fontSize: 12.sp,
                                        color: (_currentIndex == 2)
                                            ? ColorManager.blackColor
                                            : ColorManager.greyColor),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _onTapped(3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  (_currentIndex == 3)
                                      ? SvgPicture.asset(
                                          "assets/icons/icon_profileActive.svg",
                                          height: 6.h,
                                          width: 6.w,
                                        )
                                      : SvgPicture.asset(
                                          "assets/icons/icon_profileInactive.svg",
                                          height: 6.h,
                                          width: 6.w,
                                        ),
                                  Text(
                                    "Profile",
                                    style: regularStyle(
                                        fontSize: 12.sp,
                                        color: (_currentIndex == 3)
                                            ? ColorManager.blackColor
                                            : ColorManager.greyColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: SizedBox(
            height: 10.h,
            width: 20.w,
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: ColorManager.positiveColor,
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/icon_pay.svg",
                    height: 4.h,
                    width: 4.w,
                  ),
                  Text(
                    "Pay",
                    style: regularStyle(
                        fontSize: 12.sp, color: ColorManager.whiteColor),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
