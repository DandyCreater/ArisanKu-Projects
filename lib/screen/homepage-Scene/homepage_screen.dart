import 'package:arisanku/resource/color/color_manager.dart';
import 'package:arisanku/resource/font/font_manager.dart';
import 'package:arisanku/resource/routes/routes_manager.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class HomePageScene extends StatefulWidget {
  const HomePageScene({Key? key}) : super(key: key);

  @override
  State<HomePageScene> createState() => _HomePageSceneState();
}

class _HomePageSceneState extends State<HomePageScene> {
  var carousel = [
    "assets/images/image_carousel_1.png",
    "assets/images/image_carousel_2.png",
    "assets/images/image_carousel_3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (((context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: ColorManager.whiteColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.w, left: 4.h, right: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 4,
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Arisan Yuk!",
                            style: semiBoldStyle(
                                fontSize: 16.sp,
                                color: ColorManager.positiveColor),
                          ),
                          Text(
                            "Dandy Johnson",
                            style: regularStyle(
                                fontSize: 11.sp,
                                color: ColorManager.blackColor),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 7,
                      fit: FlexFit.loose,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Routes.notificationPageRoute);
                            },
                            child: SvgPicture.asset(
                              "assets/icons/icon_notification.svg",
                              height: 7.h,
                              width: 7.w,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/icons/icon_location.svg",
                            height: 7.h,
                            // width: 7.w,
                          ),
                          Text(
                            "Jakarta Barat",
                            style: semiBoldStyle(
                                fontSize: 13.sp,
                                color: ColorManager.blackColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
                width: double.infinity,
                child: CarouselSlider.builder(
                    itemCount: carousel.length,
                    itemBuilder:
                        (BuildContext context, int itemIndex, pageViewIndex) =>
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 6.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(carousel[itemIndex]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                    options: CarouselOptions(
                        viewportFraction: 1,
                        enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        enlargeCenterPage: true,
                        pauseAutoPlayOnManualNavigate: true,
                        autoPlay: true,
                        scrollDirection: Axis.horizontal)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Akumulasi Pendapatan",
                      style: semiBoldStyle(
                          fontSize: 14.sp, color: ColorManager.blackColor),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      height: 29.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorManager.whiteColor,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 0,
                                offset: const Offset(0, 2),
                                color: ColorManager.shadowColor)
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 4.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total arisan yang sedang berjalan",
                              style: mediumStyle(
                                  fontSize: 12.sp,
                                  color: ColorManager.positiveColor),
                            ),
                            Text(
                              "10 Arisan(Eva's Arisan, Elvi's Arisan, 8 more)",
                              style: regularStyle(
                                  fontSize: 11.sp,
                                  color: ColorManager.blackColor),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "Detail Pendapatan setiap arisan yang diikuti",
                              style: mediumStyle(
                                  fontSize: 10.sp,
                                  color: ColorManager.positiveColor),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1. Eva's Arisan Rp.500.000",
                                    style: regularStyle(
                                        fontSize: 11.sp,
                                        color: ColorManager.blackColor),
                                  ),
                                  Text(
                                    "2. Elvi's Arisan Rp.700.000",
                                    style: regularStyle(
                                        fontSize: 11.sp,
                                        color: ColorManager.blackColor),
                                  ),
                                  Text(
                                    "3. Dodo Arisan Rp.800.000",
                                    style: regularStyle(
                                        fontSize: 11.sp,
                                        color: ColorManager.blackColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    })));
  }
}
