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
  late final Size size = MediaQuery.of(context).size;
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
          backgroundColor: ColorManager.whiteColor,
          body: pages[_currentIndex],
          bottomNavigationBar: Container(
            width: size.width,
            height: 100,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(size.width, 100),
                  painter: AYCustomPainter(),
                ),
                Center(
                  heightFactor: 0.4,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "assets/icons/icon_pay.svg",
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => _onTapped(0),
                        child: Column(
                          children: [
                            (_currentIndex == 0)
                                ? SvgPicture.asset(
                                    "assets/icons/icon_homeActive.svg",
                                  )
                                : SvgPicture.asset(
                                    "assets/icons/icon_homeInactive.svg",
                                  ),
                            Text(
                              "Home",
                              style: regularStyle(
                                  fontSize: 10.sp,
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
                          children: [
                            (_currentIndex == 2)
                                ? SvgPicture.asset(
                                    "assets/icons/icon_arisanyukActive.svg",
                                  )
                                : SvgPicture.asset(
                                    "assets/icons/icon_arisanyukInactive.svg",
                                  ),
                            Text(
                              "Arisan Yuk",
                              style: regularStyle(
                                  fontSize: 10.sp,
                                  color: (_currentIndex == 2)
                                      ? ColorManager.blackColor
                                      : ColorManager.greyColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.2,
                      ),
                      GestureDetector(
                        onTap: () => _onTapped(2),
                        child: Column(
                          children: [
                            (_currentIndex == 2)
                                ? SvgPicture.asset(
                                    "assets/icons/icon_arisankuActive.svg",
                                  )
                                : SvgPicture.asset(
                                    "assets/icons/icon_arisankuInactive.svg",
                                  ),
                            Text(
                              "Arisanku",
                              style: regularStyle(
                                  fontSize: 10.sp,
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
                          children: [
                            (_currentIndex == 3)
                                ? SvgPicture.asset(
                                    "assets/icons/icon_profileActive.svg",
                                  )
                                : SvgPicture.asset(
                                    "assets/icons/icon_profileInactive.svg",
                                  ),
                            Text(
                              "Profile",
                              style: regularStyle(
                                  fontSize: 10.sp,
                                  color: (_currentIndex == 3)
                                      ? ColorManager.blackColor
                                      : ColorManager.greyColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

class AYCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = ColorManager.whiteColor
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 0);
    path.quadraticBezierTo(size.width * 0.2, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.4, 0, size.width * 0.4, 20);
    path.arcToPoint(Offset(size.width * 0.6, 20),
        radius: const Radius.circular(10.0), clockwise: false);

    path.quadraticBezierTo(size.width * 0.6, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.8, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw false;
  }
}
